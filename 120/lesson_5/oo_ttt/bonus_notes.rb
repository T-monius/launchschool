# bonus_notes.rb

# 2) Keep Score
#   First to 5 wins
#   No global or constant variables
#   Implement in `TTTGame#play` loop portion
#   Computer and Human players have score instance variables
#   Maintain `play_again?` functionality?
#     Extract play loop to a 'play 5' method called by play?
#     Instance method to assess scores
#       End game if predetermined number of victories met
#     When done playing, ask to play again

# 3) Computer AI: Defense
#   Computer turn
#   If two player markers in a winning line, then block

# OO 2)
#   Allow the player to pick any marker.
#   The markers are currently constants, so it doesn't really
#   make sense for them to be 'setable'.
#   Have to set the marker at initialiation with a method
#   that uses `gets`
#   Make a marker setter method.
#   Since I'm no longer using constants to represent the
#   markers, it would really make more sense for the player
#   to have the ability to make the moves.
#     I´ll then have to give the player access to the board.
#     The best way I can think of to give the player access
#     to the board is to pass the TTTGame board object into
#     the player instance method that makes the choice.
#     Else, I can pass the player's marker into the board
#     method that already exists.
#       This would rid the game of the collusion between the
#       board and the TTTGame/Square classes which currently
#       requires me to use the scope resolution operator all
#       over the place.

# OO 3) Set a name for the player and computer.
#   Name?
#   Is the name to be chosen by the user?
#     Assume so
#   Computer name chosen at random
#   Include the names in the display messages.
