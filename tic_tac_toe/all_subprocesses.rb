# all_subprocesses.rb

# display_board

# Understanding:
# There are 9 total squares
# 3x3
# Decide distance between each line on the grid
#   Center of one block on grid is the blank if empty (hash value == ' ')
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

# user_marks

# Understanding:
# Get user first move
# Validate?
#   input format a1, b3, etc
# Update hash value for that key if empty (i.e. value == ' ') else reprompt
# Display updated board

# computer marks

# Understanding:
# Select keys for empty hash values (e.g. value == ' ')
# Array of possible symbols
# Array#sample symbol
# Update hash
#   Value for key = 'o'
# Display updated board

# winner

# Understanding:
# 3 in a row, column, or diagonal signifies victory
# (a1..a3).all? 'x' or 'o'
# (b1..b3).all? 'x' or 'o'
# (c1..c3).all? 'x' or 'o'
# [a1, b1, c1] all 'x' or 'o'
# [a2, b2, c2] all 'x' or 'o'
# [a3, b3, c3] all 'x' or 'o'
# [a1, b2, c3] all 'x' or 'o'
# [c1, b2, a3] all 'x' or 'o'
# victory? method
#   takes hash input
#   returns true or false
# How do I determine if user or computer?
#   Change order of higher level flow chart? caller victor or not
#   Have separate methods: user_victory? & comp_victory?

# board_full

# Understanding:
# if hash.values.any?(' ') == false && victory calls == false
#   Display tie
