# multiples_of_3_and_5_notes.rb

# Understanding:
#   - Method
#   - Multiples of 3 and 5
#     + The divisor is considered a multiple if dividing it
#       into the dividend gives a remainder of 0
# Input
#   - Integer
# Task
#   - Find multiples of 3 or 5 from 1 upto the input integer
#     (Selection)
#   - Compute the sume of the multiples (reduction)
# Output
#   - Integer

# Approach:
#   - Select multiples from a range 1 to int
#     + Number at iteration the dividend
#     + 3 and 5 the dividends
#     + If remainder zero for either, select the number
#   - Sum the array returned by selection
