# convert_to_signed.rb

# In the previous exercise, you developed a method that converts
# simple numeric strings to Integers. In this exercise, you're going
# to extend that method to work with signed numbers.

# Write a method that takes a String of digits, and returns the
# appropriate number as an integer. The String may have a leading + or
# - sign; if the first character is a +, your method should return a
# positive number; if it is a -, your method should return a negative
# number. If no sign is given, you should return a positive number.

# You may assume the string will always contain a valid number.

# You may not use any of the standard conversion methods available in
# Ruby, such as String#to_i, Integer(), etc. You may, however, use the
# string_to_integer method from the previous lesson.

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

def string_to_signed_integer(str)
  return -(string_to_integer(str[1..-1])) if str[0] == '-'
  
  string_to_integer(str.gsub('+', ''))
end

# Examples:

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100
