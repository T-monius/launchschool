# sum_of digits.rb
# Write a method that takes one argument, a positive integer, and 
# returns the sum of its digits.

# Understanding:
# Input integer
# Output integer
# Converting to string allows indexing of digits
# Could use integer division/modulus to determine digits also

# Algorithm:
# Start
# Set variable 'sum'
# Set variable str to input to_s 
# Set array to .split of str
# Iterate over array w/ .map! calling to_i on elements
# Iterate over array adding values to variable sum
# Return sum

def sum num
  value = 0
  str = num.to_s
  arr = str.split('')
  arr.map! {|char| char.to_i}
  arr.each {|x| value += x}
  value
end

# Test cases:
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
