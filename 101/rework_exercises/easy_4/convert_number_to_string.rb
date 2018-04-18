# convert_number_to_string.rb

# In the previous two exercises, you developed methods that convert
# simple numeric strings to signed Integers. In this exercise and the
# next, you're going to reverse those methods.

# Write a method that takes a positive integer or zero, and converts
# it to a string representation.

# You may not use any of the standard conversion methods available in
# Ruby, such as Integer#to_s, String(), Kernel#format, etc. Your
# method should do this the old-fashioned way and construct the string
# by analyzing and manipulating the number.

# Understanding:
# Set hash with integer keys and string values
# Set array to individual digits of integer
# Iterate over the integer array pushing values from hash to new array
# Join new array and return

INT_REF = { 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5',
                   6 => '6', 7 => '7', 8 => '8', 9 => '9', 0 => '0' }

def integer_to_string(int)
  int_arr = int.digits.reverse
  int_arr.each_with_object([]) { |i, arr| arr << INT_REF[i] }.join
end

# Examples:

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'
