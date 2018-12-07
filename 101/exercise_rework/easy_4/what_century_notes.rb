# what_century_notes.rb

# Understanding:
# Input
#   - Year
#   - Integer
#   - Century counts  1-00
#   
# Task
#   - Determine century for year
#   - Divide a number by 100
#     + Tells us how many centuries occured
#     + If there is a remainder, add 1
#       > Indicates, the year is into the following century
#   - Suffixes
#     + Numbers ending in 1, 2, 3, are unique
#     + Numbers 11-19 are all unique
#     + Otherwise, end in 'th'
# Output
#   - Century
#   - String

# Approach:
#   - Set a variable to the result of 100 division
#   - Set another variable to the remainder
#   - Set a century variable based on the two previous
#     > Set it equal to the result of 100 division if no remainder
#     > Add one otherwise
#   - Determine suffix (helper method)
#     > Based on last two digists
#     > 'th' if teen
#     > 'st' if 1
#     > 'nd' if 2
#     > 'rd' if 3
#     > else 'th'
