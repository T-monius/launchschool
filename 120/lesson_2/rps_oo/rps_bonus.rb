# rps_bonus.rb

require 'pry'

class Move
  MOVES = ['rock', 'paper', 'scissors', 'lizard', 'spock']
  ROCK_BEATS = ['scissors', 'lizard']
  BEATS_ROCK = ['paper', 'spock']
  PAPER_BEATS = ['rock', 'spock']
  BEATS_PAPER = ['scissors', 'lizard']
  SCISSORS_BEATS = ['paper', 'lizard']
  BEATS_SCISSORS = ['spock', 'rock']
  LIZARD_BEATS = ['spock', 'paper']
  BEATS_LIZARD = ['scissors', 'rock']
  SPOCK_BEATS = ['scissors', 'rock']
  BEATS_SPOCK = ['paper', 'lizard']

  attr_reader :value

  def to_s
    @value
  end
end

class Rock < Move
  def initialize
    @value = 'rock'
  end

  def >(other_move)
    opponent = other_move.to_s
    return true if ROCK_BEATS.include?(opponent)
    return false if BEATS_ROCK.include?(opponent)
  end

  def <(other_move)
    opponent = other_move.to_s
    return true if BEATS_ROCK.include?(opponent)
    return false if ROCK_BEATS.include?(opponent)
  end
end

class Paper < Move
  def initialize
    @value = 'paper'
  end

  def >(other_move)
    opponent = other_move.to_s
    return true if PAPER_BEATS.include?(opponent)
    return false if BEATS_PAPER.include?(opponent)
  end

  def <(other_move)
    opponent = other_move.to_s
    return true if BEATS_PAPER.include?(opponent)
    return false if PAPER_BEATS.include?(opponent)
  end
end

class Scissors < Move
  def initialize
    @value = 'scissors'
  end

  def >(other_move)
    opponent = other_move.to_s
    return true if SCISSORS_BEATS.include?(opponent)
    return false if BEATS_SCISSORS.include?(opponent)
  end

  def <(other_move)
    opponent = other_move.to_s
    return true if BEATS_SCISSORS.include?(opponent)
    return false if SCISSORS_BEATS.include?(opponent)
  end
end

class Lizard < Move
  def initialize
    @value = 'lizard'
  end

  def >(other_move)
    opponent = other_move.to_s
    return true if LIZARD_BEATS.include?(opponent)
    return false if BEATS_LIZARD.include?(opponent)
  end

  def <(other_move)
    opponent = other_move.to_s
    return true if BEATS_LIZARD.include?(opponent)
    return false if LIZARD_BEATS.include?(opponent)
  end
end

class Spock < Move
  def initialize
    @value = 'spock'
  end

  def >(other_move)
    opponent = other_move.to_s
    return true if SPOCK_BEATS.include?(opponent)
    return false if BEATS_SPOCK.include?(opponent)
  end

  def <(other_move)
    opponent = other_move.to_s
    return true if BEATS_SPOCK.include?(opponent)
    return false if SPOCK_BEATS.include?(opponent)
  end
end

class Player
  attr_accessor :move, :name, :score

  def initialize(scr=0)
    set_name
    self.score = scr
  end

  def object_creator(choice)
    case choice
    when 'rock'
      Rock.new
    when 'paper'
      Paper.new
    when 'scissors'
      Scissors.new
    when 'lizard'
      Lizard.new
    when 'spock'
      Spock.new
    end
  end
end

class Human < Player
  def set_name
    n = ''
    loop do
      puts "What's your name?"
      n = gets.chomp
      break unless n.empty?
      puts "Sorry, must enter a value."
    end
    self.name = n
  end

  def choose
    choice = nil
    loop do
      puts "Please choose rock, paper, scissors, lizard, or spock: "
      choice = gets.chomp
      break if Move::MOVES.include? choice
      puts "Sorry, invalid choice."
    end
    self.move = object_creator(choice)
  end
end

class Computer < Player
  attr_accessor :history

  def initiailize
    super
    create_computer(name)
  end

  def set_name
    self.name = ['R2D2', 'Hal', 'Chappie', 'Sonny', 'Number 5'].sample
  end

  def choose
    choice = Move::MOVES.sample
    self.move = object_creator(choice)
  end
end

class R2d2 < Computer
  def set_name
    self.name = 'R2D2'
  end

  def moved_twice(p_moves)
    counts = Hash.new(0)
    Move::MOVES.each do |move|
      counts[move] = p_moves.count { |inner_arr| inner_arr[0] == move }
    end
    counts.select { |_, count| count >= 2 }.keys
  end

  def victory_rate(op_move, player_moves)
    occurences = player_moves.select { |inner_arr| inner_arr[0] == op_move }
    wins = occurences.count { |inner_arr| inner_arr[1] == 'win' }
    wins.fdiv(occurences.length).round(2)
  end

  def beats(move)
    case move
    when 'rock'
      Move::BEATS_ROCK
    when 'paper'
      Move::BEATS_PAPER
    when 'scissors'
      Move::BEATS_SCISSORS
    when 'lizard'
      Move::BEATS_LIZARD
    when 'spock'
      Move::BEATS_SPOCK
    end
  end

  def computer_ai
    players_moves = history[:human]
    top_mvs = []
    counter = 0
    loop do
      break if counter == players_moves.length

      two_plus = moved_twice(players_moves) if !moved_twice(players_moves).nil?
      two_plus.each do |move|
        if victory_rate(move, players_moves) >= 0.6
          top_mvs << [move, victory_rate(move, players_moves)]
        end
      end
      counter += 1
    end
    top_mvs.max_by { |move| move[1] }
  end

  def choose
    if !history.nil? && !computer_ai.nil?
      top_move = computer_ai
      choice = beats(top_move[0])
    else
      choice = Move::MOVES.sample
    end
    self.move = object_creator(choice)
  end
end

class Hal < Computer
  def set_name
    self.name = 'Hal'
  end

  def choose
    choice = 'rock'
    self.move = object_creator(choice)
  end
end

class Chappie < Computer
  def set_name
    self.name = 'Chappie'
  end

  def choose
    choice = ['rock', 'paper', 'rock', 'lizard', 'spock'].sample
    self.move = object_creator(choice)
  end
end

class Sonny < Computer
  def set_name
    self.name = 'Sonny'
  end

  def choose
    choice = ['scissors', 'paper', 'scissors', 'lizard', 'spock'].sample
    self.move = object_creator(choice)
  end
end

class Number5 < Computer
  def set_name
    self.name = 'Number 5'
  end
end

class RPSGame
  attr_accessor :human, :computer, :history

  def initialize
    @human = Human.new
    @computer = [R2d2.new, Hal.new, Chappie.new,
                 Sonny.new, Number5.new].sample
    @history = { human: [], computer: [] }
  end

  def display_welcome_message
    puts "Welcome to Rock, Paper, Scissors, Lizard, Spock!"
  end

  def display_goodbye_message
    puts "Thanks for playing Rock, Paper, Scissors, Lizard, Spock. Good bye!"
  end

  def display_moves
    puts "#{human.name} chose #{human.move}."
    puts "#{computer.name} chose #{computer.move}."
  end

  def score_keeper
    if human.move > computer.move
      human.score += 1
    elsif human.move < computer.move
      computer.score += 1
    end
  end

  def update_history
    h_move = human.move.to_s
    c_move = computer.move.to_s
    if human.move > computer.move
      history[:human] << [h_move, 'win']
      history[:computer] << [c_move, 'loss']
    elsif human.move < computer.move
      history[:human] << [h_move, 'loss']
      history[:computer] << [c_move, 'win']
    else
      history[:human] << [h_move, 'tie']
      history[:computer] << [c_move, 'tie']
    end
    computer.history = history
  end

  def display_winner
    if human.move > computer.move
      puts "#{human.name} won!"
    elsif human.move < computer.move
      puts "#{computer.name} won!"
    else
      puts "It's a tie!"
    end
  end

  def display_score
    puts "It's #{human.name} #{human.score} to #{computer.name}" \
         " #{computer.score}. "
  end

  def winner
    return "#{human.name} is the champ!" if human.score >= 10
    return "#{computer.name} is the champ :-(..." if computer.score >= 10
    'no winner'
  end

  def play_again?
    answer = nil
    loop do
      puts "Would you like to play again? (y/n)"
      answer = gets.chomp
      break if ['y', 'n'].include? answer.downcase
      puts "Sorry, must be y or n."
    end

    return false if answer.downcase == 'n'
    return true if answer == 'y'
  end

  def play
    display_welcome_message
    loop do
      human.choose
      computer.choose
      display_moves
      score_keeper
      display_winner
      update_history
      display_score
      break if winner != 'no winner'
    end
    puts winner
    display_goodbye_message
  end
end

RPSGame.new.play
