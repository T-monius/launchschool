# lizard_spock.rb

# 1. The goal of this bonus is to add Lizard and Spock into your
# code.

# 2. Typing the full word "rock" or "lizard" is tiring. Update the
# program so the user can type "r" for "rock," "p" for "paper," etc.
# Note that if you do bonus #1, you'll have two words that start
# with "s." How do you resolve that?

# 3. Keep score of the player's and computer's wins. When either the
# player or computer reaches five wins, the match is over, and the
# winning player becomes the grand winner. Don't add your
# incrementing logic to display_results. Keep your methods simple;
# they should perform one logical task no more.

# Understanding:
# 1. Expand win? method with further variations of victory with or
# Add to the VALID_CHOICES array
# 2. Prompt user to enter 'spsl' 'k' for 'spock'
# create an input hash with prompt options as symbols and choice as
# value.
# Access hash value by converting input into a symbol and sending to
# win? method
# 3. Perform all game logic with counters for usr and comp victories
#    Must separate win? call from display_results so as to have
#    victory information with which to increment counters
#    Adapt display method to respond to player or computer victory
#    w/ only one variable

# Algorithm:
# 3. Set usr counter and comp counter to zero
#    Set round to result call
#    If usr victory increment variable
#    else increment comp variable
#    break if either variable == 5

# Refactoring:
# Hash in win? method to determine victor
# First input value == key, and it's inferiors values in array.
# Call array with key; .include? second input.
# If true return true

VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  victors = {  'rock': ['scissors', 'lizard'],
               'paper': ['spock', 'rock'],
               'scissors': ['lizard', 'paper'],
               'lizard': ['spock', 'paper'],
               'spock': ['scissors', 'rock'] }

  # The first input is a string derived from the hash in the inner
  # loop of game logic that returns a string from another hash. Thus,
  # it needs to be converted to a symbol to get a string value from
  # this method hash.
  victors[first.to_sym].include?(second)
end

# This 'result' method simply returns victor: player, computer, tie
def result(player, computer)
  if win?(player, computer)
    "player"
  elsif win?(computer, player)
    "computer"
  else
    "tie"
  end
end

def display_results(round)
  if round == 'player'
    prompt("You won!")
  elsif round == 'computer'
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

user_victory = 0
comp_victory = 0

loop do
  choice = ''
  inputs = {  'r': 'rock',
              'p': 'paper',
              's': 'scissors',
              'l': 'lizard',
              'k': 'spock' }

  loop do
    prompt("Choose one: 'r' for rock, 'p' paper, 's' scissors,"\
           "'l' lizard, 'k' spock.")
    choice = Kernel.gets().chomp()
    # This call to the input hash will return the string that we
    # want to use as the users choice to play.
    choice = inputs[choice.to_sym]

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  Kernel.puts("You chose: #{choice}; Computer chose: #{computer_choice}")

  # Since we are playing a best of five game, the variable round
  # is the victor (player or computer) of this round.
  round = result(choice, computer_choice)
  if round == "player"
    user_victory += 1
  elsif round == "computer"
    comp_victory += 1
  end

  display_results(round)

  break if user_victory == 5 || comp_victory == 5
end

prompt("Thank you for playing. Goodbye!")
