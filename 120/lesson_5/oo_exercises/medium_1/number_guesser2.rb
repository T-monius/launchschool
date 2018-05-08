# number_guesser2.rb

# In the previous exercise, you wrote a number guessing game that
# determines a secret number between 1 and 100, and gives the user 7
# opportunities to guess the number.

# Update your solution to accept a low and high value when you create a
# GuessingGame object, and use those values to compute a secret number
# for the game. You should also change the number of guesses allowed so
# the user can always win if she uses a good strategy. You can compute
# the number of guesses with:

# Math.log2(size_of_range).to_i + 1

class GuessingGame
  RESULT_OF_GUESS_MESSAGE = {
    high:  "Your number is too high.",
    low:   "Your number is too low.",
    match: "That's the number!"
  }.freeze

  WIN_OR_LOSE = {
    high:  :lose,
    low:   :lose,
    match: :win
  }.freeze

  RESULT_OF_GAME_MESSAGE = {
    win:  "You won!",
    lose: "You have no more guesses. You lost!"
  }.freeze

  attr_accessor :max_guesses, :range

  def initialize(low, high)
    @secret_number = nil
    self.range = (low..high)
    self.max_guesses = Math.log2(range.size).to_i + 1
  end

  def play
    reset
    game_result = play_game
    display_game_end_message(game_result)
  end

  private

  def reset
    @secret_number = rand(range)
  end

  def play_game
    result = nil
    max_guesses.downto(1) do |remaining_guesses|
      display_guesses_remaining(remaining_guesses)
      result = check_guess(obtain_one_guess)
      puts RESULT_OF_GUESS_MESSAGE[result]
      break if result == :match
    end
    WIN_OR_LOSE[result]
  end

  def display_guesses_remaining(remaining)
    puts
    if remaining == 1
      puts 'You have 1 guess remaining.'
    else
      puts "You have #{remaining} guesses remaining."
    end
  end

  def obtain_one_guess
    loop do
      print "Enter a number between #{range.first} and #{range.last}: "
      guess = gets.chomp.to_i
      return guess if range.cover?(guess)
      print "Invalid guess. "
    end
  end

  def check_guess(guess_value)
    return :match if guess_value == @secret_number
    return :low if guess_value < @secret_number
    :high
  end

  def display_game_end_message(result)
    puts "", RESULT_OF_GAME_MESSAGE[result]
  end
end


game = GuessingGame.new(501, 1500)
game.play
