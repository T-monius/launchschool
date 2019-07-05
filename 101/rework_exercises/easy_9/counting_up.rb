# counting_up.rb

# Write a method that takes an integer argument, and returns an Array
# of all integers, in sequence, between 1 and the argument.

# You may assume that the argument will always be a valid integer that
# is greater than 0.

# Understanding:
# Input,
#   Integer
#   Positive number greater than 0
# Task
#   Iterate, select, or convert a range
#   If iterate, push every integer to an array
#   If select, select all appropriate integers
# Output,
#   Array
#     All the integers between 1 and input inclusive

def sequence(int)
  (1..int).to_a
end

# Examples:

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
