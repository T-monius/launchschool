# display_board

# Understanding:
# There are 9 total squares
# 3x3
# Decide distance between each line on the grid
#   Center of one block on grid is the blank if empty
#   Display value if marked
#     Value either x or o
#     Can store values in a hash with grid location as key (ie :1_1)
# puts "" displays each line of the grid
#   Interpolate values on appropriate lines
# display_board will be a method
#   Hash user inputs stored in outside of method
#   Outer hash fed into method as parameter when called
# "   |   | #{hsh[a3]} "
# "-----------"
# "   |   | x "
# "-----------"
# "   |   | x "

# User can input 'options' to display a board with grid designations at anyitme
#   " a1 | a2 | a3 "
#   "--------------"
#   " b1 | b2 | b3 "
#   "--------------"
#   " c1 | c2 | c3 "
