# short_long_short.rb

# Write a method that takes two strings as arguments, determines the
# longest of the two strings, and then returns the result of
# concatenating the shorter string, the longer string, and the
# shorter string once again. You may assume that the strings are of
# different lengths.

# Understanding:
# Strings are the only data structure
# Use a method to determine which of to inputs is longer
# Concatenate shorter, longer, shorter

# Algorithm:
# Define method with two parameters
# If first parameter shorter, Set to 'short' variable and 2nd 'long'
# Else first to 'long' and 2nd to 'short'
# Concatenate short + long + short

def short_long_short(first, second)
  short = ''
  long = ''
  if first.length < second.length
    short = first
    long = second
  else
    short = second
    long = first
  end
  short + long + short
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"
