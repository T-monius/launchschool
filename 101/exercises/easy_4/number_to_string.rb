# number_to_string.rb

# Write a method that takes a positive integer or zero, and converts
# it to a string representation.

# Understanding:
# Can use a hash to plot integers to string characters
# Use digits method to get an array of chars in integer
# Concantenate string characters in array

def integer_to_string(int)
  string_chars = {
    0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5',
    6 => '6', 7 => '7', 8 => '8', 9 => '9'
  }

  string = ''
  int.digits.reverse.each {|digit| string << string_chars[digit]}
  string
end

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'
