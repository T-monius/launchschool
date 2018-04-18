# string_convert_hex.rb

# Further Exploration:
# Write a hexadecimal_to_integer method that converts a string
# representing a hexadecimal number to its integer value.

# Understanding:
# Hexadecimal characters represent values from 0-15 or 0-f (base 16)
# Can use a hash to represent those values
# Input:
#   string with alpha characters upcase and downcase

CONVERSION_HASH = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
                    '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
                    'a' => 10, 'b' => 11, 'c' => 12, 'd' => 13,
                    'e' => 14, 'f' => 15 }


def hex_combinator(hex_arr)
  total = hex_arr[0]
  counter = 1

  loop do
    break if counter == hex_arr.size

    total = total * 16 + hex_arr[counter]
    counter += 1 
  end
  total
end

def hexadecimal_to_integer(str)
  string_array = str.downcase.chars
  hex_array = []
  string_array.each { |char| hex_array << CONVERSION_HASH[char] }
  hex_combinator(hex_array)
end

# Example:

p hexadecimal_to_integer('4D9f') == 19871
