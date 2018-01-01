# tic_tac_toe.rb
require 'pry'

WINNING_LINES = [[:a1, :a2, :a3], [:b1, :b2, :b3], [:c1, :c2, :c3]] + # columns
                [[:a1, :b1, :c1], [:a2, :b2, :c2], [:a3, :b3, :c3]] + # rows
                [[:a1, :b2, :c3], [:a3, :b2, :c1]]                    # diagonals

game_hash = { a1: ' ', a2: ' ', a3: ' ',
              b1: ' ', b2: ' ', b3: ' ',
              c1: ' ', c2: ' ', c3: ' ' }

def board_layout
  puts " a1 | a2 | a3 "
  puts "--------------"
  puts " b1 | b2 | b3 "
  puts "--------------"
  puts " c1 | c2 | c3 "
end

def ready
  prompt('Are you ready to play? (Y for yes)')
  loop do
    clr = gets.chomp.downcase
    if clr.start_with?('y')
      system 'clear'
      break
    else
      prompt('Just tell me when.')
    end
  end
end

def display_board(hsh)
  puts " #{hsh[:a1]} | #{hsh[:a2]} | #{hsh[:a3]} "
  puts "-----------"
  puts " #{hsh[:b1]} | #{hsh[:b2]} | #{hsh[:b3]} "
  puts "-----------"
  puts " #{hsh[:c1]} | #{hsh[:c2]} | #{hsh[:c3]} "
end

def display_options(hsh)
  arr = []
  hsh.each { |position, mark| arr << position if mark == ' ' }
  p arr
end

def initialize_board(hsh)
  hsh.transform_values! { |v| v = ' ' }
end

def prompt(message)
  puts "=> #{message}"
end

def player_marks_board(hsh)
  loop do
    prompt('Please enter where you\'d like to mark the board with an \'x\''\
      'or \'opt\' to see the options from the display_board: ')
    user_x = gets.chomp.downcase.to_sym

    if hsh.keys.include?(user_x)
      hsh[user_x] = 'x'
      display_board(hsh)
      break
    elsif user_x == :opt
      display_options(hsh)
    else
      puts 'Sorry, that is not a viable option to play.'
    end
  end
end

def computer_marks_board(hsh)
  computer_options = []
  hsh.each { |key, value| computer_options << key if value == ' ' }
  computer_choice = computer_options.sample
  hsh[computer_choice] = 'o'
  prompt('The computer chose:')
  display_board(hsh)
end

def user_victor?(hsh)
  WINNING_LINES.each do |line|
  binding.pry
    if hsh.values_at(*line).count('x') == 3
      return true
    else
      return false
    end
  end
=begin
  if [hsh[:a1], hsh[:a2], hsh[:a3]].all? { |obj| obj == 'x' }
    true
  elsif [hsh[:b1], hsh[:b2], hsh[:b3]].all? { |obj| obj == 'x' }
    true
  elsif [hsh[:c1], hsh[:c2], hsh[:c3]].all? { |obj| obj == 'x' }
    true
  elsif [hsh[:a1], hsh[:b1], hsh[:c1]].all? { |obj| obj == 'x' }
    true
  elsif [hsh[:a2], hsh[:b2], hsh[:c2]].all? { |obj| obj == 'x' }
    true
  elsif [hsh[:a3], hsh[:b3], hsh[:c3]].all? { |obj| obj == 'x' }
    true
  elsif [hsh[:a1], hsh[:b2], hsh[:c3]].all? { |obj| obj == 'x' }
    true
  elsif [hsh[:c1], hsh[:b2], hsh[:a3]].all? { |obj| obj == 'x' }
    true
  else
    false
  end
=end
end

def comp_victor?(hsh)
  if [hsh[:a1], hsh[:a2], hsh[:a3]].all? { |obj| obj == 'o' }
    true
  elsif [hsh[:b1], hsh[:b2], hsh[:b3]].all? { |obj| obj == 'o' }
    true
  elsif [hsh[:c1], hsh[:c2], hsh[:c3]].all? { |obj| obj == 'o' }
    true
  elsif [hsh[:a1], hsh[:b1], hsh[:c1]].all? { |obj| obj == 'o' }
    true
  elsif [hsh[:a2], hsh[:b2], hsh[:c2]].all? { |obj| obj == 'o' }
    true
  elsif [hsh[:a3], hsh[:b3], hsh[:c3]].all? { |obj| obj == 'o' }
    true
  elsif [hsh[:a1], hsh[:b2], hsh[:c3]].all? { |obj| obj == 'o' }
    true
  elsif [hsh[:c1], hsh[:b2], hsh[:a3]].all? { |obj| obj == 'o' }
    true
  else
    false
  end
end

def board_full?(hsh)
  if hsh.values.include?(' ') == false &&
     user_victor?(hsh) == false &&
     comp_victor?(hsh) == false
    prompt("It's a tie.")
    true
  else
    false
  end
end

def play_again?
  prompt("Would you like to play again?('Y' for yes or anything else for no.")
  continue = gets.chomp.downcase

  if continue == 'y'
    true
  else
    false
  end
end

prompt('Welcome to the tic tac toe game!')
prompt('This is the layout of the board:')
board_layout
prompt("You indicate where you will play by entering 'a1', 'b3', etc...")
prompt('The board is currently empty:')
display_board(game_hash)
ready

loop do
  player_marks_board(game_hash)

  if user_victor?(game_hash)
    prompt('You won!')
    if play_again?
      initialize_board(game_hash)
    else
      break
    end
  end

  computer_marks_board(game_hash)

  if comp_victor?(game_hash)
    prompt('The computer won :-(')
    if play_again?
      initialize_board(game_hash)
    else
      break
    end
  end

  if board_full?(game_hash)
    if play_again?
      initialize_board(game_hash)
    else
      break
    end
  end
end

prompt('Thanks for playing!')
