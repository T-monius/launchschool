# ttt_bonus.rb

require 'pry'

class Board
  WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                  [[1, 5, 9], [3, 5, 7]]              # diagonals

  def initialize
    @squares = {}
    reset
  end

  def []=(num, marker)
    @squares[num].marker = marker
  end

  def unmarked_keys
    @squares.keys.select { |key| @squares[key].unmarked? }
  end

  def full?
    unmarked_keys.empty?
  end

  def someone_won?
    !!winning_marker
  end

  def winning_marker
    WINNING_LINES.each do |line|
      squares = @squares.values_at(*line)
      if three_identical_markers?(squares)
        return squares.first.marker
      end
    end
    nil
  end

  def user_threat?(computer_marker, human_marker)
    !!computer_defense(computer_marker, human_marker)
  end

  def computer_advantage?(computer_marker)
    !!computer_offense(computer_marker)
  end

  def computer_offense(computer_marker)
    WINNING_LINES.each do |line|
      markers = @squares.values_at(*line).collect(&:marker)
      if markers.count(computer_marker) == 2
        line.each do |int|
          return int if @squares[int].marker == Square::INITIAL_MARKER
        end
      end
    end
    false
  end

  def computer_defense(computer_marker, human_marker)
    WINNING_LINES.each do |line|
      markers = @squares.values_at(*line).collect(&:marker)
      if markers.count(human_marker) == 2 &&
         markers.count(computer_marker) == 0
        line.each do |int|
          return int if @squares[int].marker == Square::INITIAL_MARKER
        end
      end
    end
    false
  end

  def square_5?
    @squares[5].marker == Square::INITIAL_MARKER
  end

  def reset
    (1..9).each { |key| @squares[key] = Square.new }
  end

  # rubocop:disable Metrics/AbcSize
  def draw
    puts "     |     |"
    puts "  #{@squares[1]}  |  #{@squares[2]}  |  #{@squares[3]}"
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{@squares[4]}  |  #{@squares[5]}  |  #{@squares[6]}"
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{@squares[7]}  |  #{@squares[8]}  |  #{@squares[9]}"
    puts "     |     |"
  end
  # rubocop:enable Metrics/AbcSize

  private

  def three_identical_markers?(squares)
    markers = squares.select(&:marked?).collect(&:marker)
    return false if markers.size != 3
    markers.min == markers.max
  end
end

class Square
  INITIAL_MARKER = " "

  attr_accessor :marker

  def initialize(marker=INITIAL_MARKER)
    @marker = marker
  end

  def to_s
    @marker
  end

  def unmarked?
    marker == INITIAL_MARKER
  end

  def marked?
    marker != INITIAL_MARKER
  end
end

class Player
  attr_accessor :score, :marker, :name

  def initialize
    self.score = 0
  end

  def reset_score
    self.score = 0
  end
end

class TTTGame
  CHOOSE = 'choose'
  FIRST_TO_MOVE = CHOOSE
  TOTAL_ROUNDS = 2

  attr_reader :board, :human, :computer

  def initialize
    @board = Board.new
    @human = Player.new
    @computer = Player.new
    @current_turn = FIRST_TO_MOVE
    human.marker = choose_player_marker
    set_computer_marker
    choose_names
  end

  def play
    clear
    display_welcome_message
    loop do
      display_board
      play_round
      score_keeper
      display_result
      if total_rounds?
        break unless play_again?
        reset_score
        display_play_again_message
      end
      reset
    end
    display_goodbye_message
  end

  private

  def display_welcome_message
    puts "Welcome to Tic Tac Toe!"
    puts ""
  end

  def display_goodbye_message
    puts "Thanks for playing Tic Tac Toe! Goodbye!"
  end

  def clear_screen_and_display_board
    clear
    display_board
  end

  def choose_player_marker
    choice = ''
    loop do
      puts "Enter 'x' or 'o' to choose your marker: "
      choice = gets.chomp.downcase
      break if choice.start_with?('x', 'o')
    end
    return 'X' if choice.start_with?('x')
    'O'
  end

  def set_computer_marker
    computer.marker = 'O' if human.marker == 'X'
    computer.marker = 'X' if human.marker == 'O'
  end

  def choose?
    return true if @current_turn == CHOOSE
    false
  end

  def valid?(choice)
    !!choice.start_with?('y', 'n')
  end

  def choose_player_name
    puts 'What do you want to be called?'
    loop do
      human.name = gets.chomp
      break if !human.name.empty?
    end
  end

  def computer_name
    computer.name = ['Sonny', 'R2D2', 'Android', 'iRobot'].sample
  end

  def choose_names
    choose_player_name
    computer_name
  end

  def choose_turn
    choice = ''
    loop do
      puts "Do you want to go first #{human.name}? (y/n)"
      choice = gets.chomp.downcase
      break if valid?(choice)
      puts 'Not a valid entry.'
    end
    @current_turn = human.marker if choice.start_with?('y')
    @current_turn = computer.marker if !choice.start_with?('y')
  end

  def human_turn?
    @current_turn == human.marker
  end

  def display_board
    puts "You're an #{human.marker}. The computer '#{computer.name}'"\
         " is an #{computer.marker}."
    puts ""
    board.draw
    puts ""
  end

  def play_round
    choose_turn if choose?
    loop do
      current_player_moves
      break if board.someone_won? || board.full?
      clear_screen_and_display_board
    end
  end

  def joinor(arr, separator = ', ', last_sep = 'or')
    if arr.size == 2
      arr.join(separator)
    elsif arr.size > 2
      str = ' ' << last_sep << ' ' << arr.pop.to_s
      str.prepend(arr.join(separator))
    elsif arr.size == 1
      arr[0].to_s
    else
      ''
    end
  end

  def human_moves
    puts "Choose a square #{human.name} (#{joinor(board.unmarked_keys)}): "
    square = nil
    loop do
      square = gets.chomp.to_i
      break if board.unmarked_keys.include?(square)
      puts "Sorry, that's not a valid choice."
    end

    board[square] = human.marker
  end

  def offensive_move
    board[board.computer_offense(computer.marker)] = computer.marker
  end

  def defensive_move
    human_marker = human.marker
    computer_marker = computer.marker
    board[board.computer_defense(computer_marker, human_marker)] =
      computer.marker
  end

  def random_move
    board[board.unmarked_keys.sample] = computer.marker
  end

  def computer_moves
    computer_marker = computer.marker
    human_marker = human.marker
    if board.computer_advantage?(computer_marker)
      offensive_move
    elsif board.user_threat?(computer_marker, human_marker)
      defensive_move
    elsif board.square_5?
      board[5] = computer_marker
    else
      random_move
    end
  end

  def current_player_moves
    if human_turn?
      human_moves
      @current_turn = computer.marker
    else
      computer_moves
      @current_turn = human.marker
    end
  end

  def score_keeper
    case board.winning_marker
    when human.marker
      human.score += 1
    when computer.marker
      computer.score += 1
    end
  end

  def total_rounds?
    human.score == TOTAL_ROUNDS || computer.score == TOTAL_ROUNDS
  end

  def display_result
    clear_screen_and_display_board

    case board.winning_marker
    when human.marker
      puts "You won #{human.name}!"
    when computer.marker
      puts "#{computer.name} won!"
    else
      puts "It's a tie!"
    end
    sleep(2)
  end

  def play_again?
    answer = nil
    loop do
      puts "Would you like to play again? (y/n)"
      answer = gets.chomp.downcase
      break if %w[y n].include? answer
      puts "Sorry, must be y or n"
    end

    answer == 'y'
  end

  def clear
    system "clear"
  end

  def reset
    board.reset
    @current_turn = FIRST_TO_MOVE
    clear
  end

  def reset_score
    human.reset_score
    computer.reset_score
  end

  def display_play_again_message
    puts "Let's play again #{human.name}!"
    puts ""
    sleep(2)
  end
end

game = TTTGame.new
game.play
