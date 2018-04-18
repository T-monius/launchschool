# middle_character.rb

# Write a method that takes a non-empty string argument, and returns
# the middle character or characters of the argument. If the argument
# has an odd length, you should return exactly one character. If the
# argument has an even length, you should return exactly two characters.

# Understanding:
# Input,
#   String
#   Non-empty
#   Identify middle of string by character length
#   If the string has an even number of characters, then, the middle
#   is two characters not one.
# Output,
#   Single string character or two character sting

# Algorithm:
#   Set character length to a variable.
#   Fork based on oddity
#   If odd
#     Return character at half of index
#   else
#     Character from half -1 to half

def center_of(str)
  length = str.length
  half = length/2
  return str[half] if length.odd?
  str[(half - 1)..half]
end

# Examples:

puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'
