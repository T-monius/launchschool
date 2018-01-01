# notes_computer_defense_method.rb

# Understanding:
# If two squares in a row are the player's then computer marks the third
#   Does in a row mean literaly mean side by side in a 'row', or does
#   it extend to colums and diagonals?
#   Do two squares out of the row count if they are not side by side?
#   If any two squares marked on a line are a threat, will the computer
#   be too powerful?
# Assuming that the task is to defend against any two squares on a line
#   One method to return whether there is a threat and another to identify
#   Second method returns the square to be played directly...

# Algorithm:
# Identify move method
#   Iterate over the board to see if any 2 player marked squares on a line
#   If 2 squares
#     iterate over line
#     return key if it's value is empty
# Computer_places_piece! modifications
#   if user_threat?
#     Call computer defense
#     Use return value as move
#     
#   else
#     conjure random move
