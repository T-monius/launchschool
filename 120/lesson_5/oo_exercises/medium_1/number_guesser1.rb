# number_guesser1.rb

# Create an object-oriented number guessing class for numbers in the
# range 1 to 100, with a limit of 7 guesses per game. The game should
# play like this:

class GuessingGame
  NUMBER_RANGE = (1..100)
  MESSAGES = { win: 'You win!', too_low: 'Your guess is too low',
               too_high: 'Your guess is too high',
               invalid: 'Invalid guess' }
  attr_accessor :player_number, :win, :result

  def initialize
    self.guesses = 7
    self.win = false
    self.random_number = NUMBER_RANGE.to_a.sample
  end

  def out_of_guesses?
    !!(guesses <= 0)
  end

  def say_guesses
    puts "You have #{guesses} guesses remaining."
  end

  def in_range?(num)
    !!NUMBER_RANGE.include?(num)
  end

  def query_player
    loop do
      print 'Enter a number between 1 and 100: '
      self.player_number = gets.chomp.to_i
      break if in_range?(player_number)
      print "#{MESSAGES[:invalid]}. "
    end
  end

  def compare
    if player_number == random_number
      self.win = true
      self.result = :win
    elsif player_number > random_number
      self.result = :too_high
    elsif player_number < random_number
      self.result = :too_low
    end
  end

  def display_result
    puts "#{MESSAGES[result]}"
    puts ''
  end

  def play
    loop do
      if out_of_guesses?
        puts 'You are out of guesses. You lose.'
        break
      end
      say_guesses
      query_player
      compare
      display_result
      break if win
      self.guesses -= 1
    end
  end

  protected

  attr_accessor :random_number, :guesses
end

game = GuessingGame.new
game.play
=begin
You have 7 guesses remaining.
Enter a number between 1 and 100: 104
Invalid guess. Enter a number between 1 and 100: 50
Your guess is too low

You have 6 guesses remaining.
Enter a number between 1 and 100: 75
Your guess is too low

You have 5 guesses remaining.
Enter a number between 1 and 100: 85
Your guess is too high

You have 4 guesses remaining.
Enter a number between 1 and 100: 0
Invalid guess. Enter a number between 1 and 100: 80

You have 3 guesses remaining.
Enter a number between 1 and 100: 81
You win!
=end

# game.play
=begin
You have 7 guesses remaining.
Enter a number between 1 and 100: 50
Your guess is too high

You have 6 guesses remaining.
Enter a number between 1 and 100: 25
Your guess is too low

You have 5 guesses remaining.
Enter a number between 1 and 100: 37
Your guess is too high

You have 4 guesses remaining.
Enter a number between 1 and 100: 31
Your guess is too low

You have 3 guesses remaining.
Enter a number between 1 and 100: 34
Your guess is too high

You have 2 guesses remaining.
Enter a number between 1 and 100: 32
Your guess is too low

You have 1 guesses remaining.
Enter a number between 1 and 100: 32
Your guess is too low
You are out of guesses. You lose.
=end

# Note that a game object should start a new game with a new number to
# guess with each call to #play.
