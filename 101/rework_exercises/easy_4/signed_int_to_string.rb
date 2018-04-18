# signed_int_to_string.rb

# In the previous exercise, you developed a method that converts
# non-negative numbers to strings. In this exercise, you're going to
# extend that method by adding the ability to represent negative
# numbers as well.

# Write a method that takes an integer, and converts it to a string
# representation.

# You may not use any of the standard conversion methods available in
# Ruby, such as Integer#to_s, String(), Kernel#format, etc. You may,
# however, use integer_to_string from the previous exercise.

require 'pry'

INT_REF = { 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5',
                   6 => '6', 7 => '7', 8 => '8', 9 => '9', 0 => '0' }

def integer_to_string(int)
  int_arr = int.digits.reverse
  int_arr.each_with_object([]) { |i, arr| arr << INT_REF[i] }.join
end

def signed_integer_to_string(int)
  case 
  when int > 0
    integer_to_string(int).prepend('+')
  when int == 0
    integer_to_string(int)
  else
    integer_to_string(int.abs).prepend('-')
  end
end
# Examples:

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
