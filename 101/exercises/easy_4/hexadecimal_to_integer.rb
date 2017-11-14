# hexadecimal_to_integer.rb

# Further Exploration (Small Problems: Easy 4 - String to Integer)

# Write a hexadecimal_to_integer method that converts a string
# representing a hexadecimal number to its integer value.

# Understanding:

# A hexadecimal representaion is base 16 math
# 0-f (representing numbers '0' to '15')
# Each additional character of a hexadecimal number is equivalent to
# 16 to the power of it's distance from the end of the string.

# Algorithm:
# Create hash mapping character as key to it's integer value
# Define method w/ one parameter
# Split string into characters
# Call .each on array of characters
# Access integer value from hash for character
#   total * 16 + integer value
# Return total

HEX_DIGITS = {  '0' => 0,
                '1' => 1,
                '2' => 2,
                '3' => 3,
                '4' => 4,
                '5' => 5,
                '6' => 6,
                '7' => 7,
                '8' => 8,
                '9' => 9,
                'A' => 10,
                'a' => 10,
                'B' => 11,
                'b' => 11,
                'C' => 12,
                'c' => 12,
                'D' => 13,
                'd' => 13,
                'E' => 14,
                'e' => 14,
                'F' => 15,
                'f' => 15 }

def hexadecimal_to_integer(string_num)
  total = 0
  string_num.chars.each do |char|
    total = (total * 16) + HEX_DIGITS[char]
  end
  total
end

puts hexadecimal_to_integer('D1CE') == 53710
puts hexadecimal_to_integer('2E6') == 742
