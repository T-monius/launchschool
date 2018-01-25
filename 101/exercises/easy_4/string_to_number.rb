# string_to_number.rb

# You may not use any of the standard conversion methods available in
# Ruby, such as String#to_i, Integer(), etc. Your method should do
# this the old-fashioned way and calculate the result by analyzing
# the characters in the string.

# Understanding:
# Cannot use standard conversion methods
# I assume other string methods can be used
# Must analyze each character of string
#   Store string characters '0'..'9' in a hash as keys
#   Corresponding value will be integer 0..9
# Convert each character to corresponding Intever value
# print that integer value

# Algorithm:
# Define method with one parameter
# Set hash with keys "0".."9" and values 0..9
# Call chars on input string
# Call .each on chars
# Tried printing every element calling map on array, but return
# value is a string although chars outputted
# Refactor running_total method to Multiply by 10 at each iteration
# before adding the charater

def running_total(array)
  total = 0
  array.map do |e|
    total = total * 10 + e
  end
  total
end

def string_to_integer(num_string)
  str_numbers_and_ints = {  '0' => 0,
                            '1' => 1,
                            '2' => 2,
                            '3' => 3,
                            '4' => 4,
                            '5' => 5,
                            '6' => 6,
                            '7' => 7, 
                            '8' => 8,
                            '9' => 9, }
  array = []
  num_string.chars.each {|char| array << str_numbers_and_ints[char]}
  running_total(array)
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570
