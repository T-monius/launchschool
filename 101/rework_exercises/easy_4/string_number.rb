# string_number.rb

# The String#to_i method converts a string of numeric characters
# including an optional plus or minus sign) to an Integer. String#to_i
# and the Integer constructor (Integer()) behave similarly. In this
# exercise, you will create a method that does the same thing.

# Write a method that takes a String of digits, and returns the
# appropriate number as an integer. You may not use any of the methods
# mentioned above.


# For now, do not worry about leading + or - signs, nor should you
# worry about invalid characters; assume all characters will be
# numeric.

# You may not use any of the standard conversion methods available in
# Ruby, such as String#to_i, Integer(), etc. Your method should do
# this the old-fashioned way and calculate the result by analyzing the
# characters in the string.

# Understanding:
# Input - string
# Output - integer
# Can't use built in conversion methods

# Algorithm:
# Data Structure - hash
# Chars string
# Set integer array
# Each string array
#   Push equivalent integer char for string element to integer array
# Call Method that combines integer elements to single integer
#   4 * 10 +3 * 10 ...

CONVERSION_HASH = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
                    '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 }

def integer_combinator(int_arr)
  total = int_arr[0]
  counter = 1

  loop do
    break if counter == int_arr.size

    total = total * 10 + int_arr[counter]
    counter += 1 
  end
  total
end

def string_to_integer(str)
  string_array = str.chars
  integer_array = []
  string_array.each { |char| integer_array << CONVERSION_HASH[char] }
  integer_combinator(integer_array)
end

# Examples:

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
