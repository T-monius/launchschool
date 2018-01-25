# sum_of digits.rb

# Write a method that takes one argument, a positive integer, and 
# returns the sum of its digits.

# Understanding:
# Write a method
# Input, positive integer
# Output, integer
# Need to break interger into individual digits.
#   Can do with Integer#digits
#   Can convert to a string
#   Can break down mathematically

# Mathematically:
# Each space over in an integer represents a power of ten
# Can divide out the remainder by dividing integer by ten and storing
# the remainder as the value at that position.
# Divide by ten continually until the number remaining is zero
# To sum
#   If stored all digits in an array, add them together

# Algorithm:
# Set array to empty
# Loop
#   break if number is zero
#   Push the remainder of dividing number by ten to array
# Sum digits in array

def sum(int)
  array_of_digits = []

  loop do
    break if int == 0
    array_of_digits.unshift(int % 10)
    int = int/10
  end
  array_of_digits.sum
end

# Test cases:
p sum(23) == 5
p sum(496) == 19
p sum(123_456_789) == 45
