# string_to_number_notes.rb

# Understanding:
# - Convert string to integer
# - Do not use a conversion method like `String#to_i`
# Input
#   - String
#   - Arbitrary number of characters
# Task
#   - Convert the string characters to their integer equivalent
#   - Transformations
# Output
#   - Integer of the same length of characters as input

# Approach
#   - Set a hash lookup with strings as keys and integers
#     as values
#   - Split the string
#     > Map it to the hash lookup
#     > Join array of integers
#       + Iterate over the array
#       + Maintain a runnning total
#       + Add number at iteration to total
#       + Multiply by ten if the iteration will continue
#   - 
