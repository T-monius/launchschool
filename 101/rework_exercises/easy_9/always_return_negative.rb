# always_return_negative.rb

# Write a method that takes a number as an argument. If the argument is
# a positive number, return the negative of that number. If the number
# is 0 or negative, return the original number.

# Understanding:
# Input,
#   An integer
#   Can be positive or negative
# Task
#   Branch based on whether the input is positive or negative
# Output,
#   Negative number

def negative(int)
  return int if int <= 0
  -int
end

# Examples;

puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0      # There's no such thing as -0 in ruby
