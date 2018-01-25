# lstictactoe.rb

require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagonals
STARTING_PARTICIPANT = 'choose'

def prompt(msg)
  puts "=>#{msg}"
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

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |     "
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
  puts "     |     |     "
  puts "-----+-----+-----"
  puts "     |     |     "
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
  puts "     |     |     "
  puts "-----+-----+-----"
  puts "     |     |     "
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
  puts "     |     |     "
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end

  brd[square] = PLAYER_MARKER
end

def computer_advantage?(brd)
  !!computer_offense(brd)
end

def computer_offense(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(COMPUTER_MARKER) == 2
       line.each { |int| return int if brd[int] == INITIAL_MARKER }
    end
  end
  false
end


def user_threat?(brd)
  !!computer_defense(brd)
end

def computer_defense(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 2 &&
       brd.values_at(*line).count(COMPUTER_MARKER) == 0
      line.each { |int| return int if brd[int] == INITIAL_MARKER }
    end
  end
  false
end

def square_5?(brd)
  brd[5] == INITIAL_MARKER
end

def computer_places_piece!(brd)
  if computer_advantage?(brd)
    square = computer_offense(brd)
  elsif user_threat?(brd)
    square = computer_defense(brd)
  elsif square_5?(brd)
    square = 5
  else
    square = empty_squares(brd).sample
  end
  brd[square] = COMPUTER_MARKER
end

def place_piece!(brd, current_player)
  if current_player == 'player'
    player_places_piece!(brd)
  else
    computer_places_piece!(brd)
  end
end

def alternate_player(current_player)
  if current_player == 'player'
    current_player = 'computer'
  else
    current_player = 'player'
  end
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end


loop do
  player_wins = 0
  computer_wins = 0
  current_player = ''

  if STARTING_PARTICIPANT == 'choose'
    loop do  
      prompt "Would you like to start first or the computer?\n"\
             "Type 'player' for yourself, 'computer', or 'choose' for random."
      current_player = gets.chomp.downcase
      break if current_player == 'player' || current_player == 'computer' ||
               current_player == 'choose'
    end
  else
    current_player = STARTING_PARTICIPANT
  end

  current_player = ['player', 'computer'].sample if current_player == 'choose'
  loop do
    break if player_wins == 5 || computer_wins == 5
    board = initialize_board
    # This is what we're going for to replace the repetitive if/else below
    loop do
      display_board(board)
      # Understanding:
      # The 'place_piece!' method will take the variable current_player and
      # simply call the approriate method
      # Should the end of the computer_place_piece! method display_board?
      # 
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      # Are these next two lines good here or better in the other methods?
      player_wins += 1 if detect_winner(board) == 'Player'
      computer_wins += 1 if detect_winner(board) == 'Computer'
      break if someone_won?(board) || board_full?(board)
    end
=begin
    if current_player == 'player'
      loop do
        display_board(board)
        player_places_piece!(board)
        player_wins += 1 if detect_winner(board) == 'Player'
        break if someone_won?(board) || board_full?(board)

        computer_places_piece!(board)
        computer_wins += 1 if detect_winner(board) == 'Computer'
        break if someone_won?(board) || board_full?(board)
      end
    else
      loop do
        display_board(board)      
        computer_places_piece!(board)
        computer_wins += 1 if detect_winner(board) == 'Computer'
        break if someone_won?(board) || board_full?(board)
        display_board(board)

        player_places_piece!(board)
        player_wins += 1 if detect_winner(board) == 'Player'
        break if someone_won?(board) || board_full?(board)
      end
    end
=end
    display_board(board)

    if someone_won?(board)
      prompt "#{detect_winner(board)} won!"
      prompt "Player score:#{player_wins}. Computer score #{computer_wins}"
      sleep(2)
    else
      prompt "It's a tie!"
    end
  end

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe. Good Bye!"
