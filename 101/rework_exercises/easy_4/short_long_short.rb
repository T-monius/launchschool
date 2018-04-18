# short_long_short.rb

# Write a method that takes two strings as arguments, determines the
# longest of the two strings, and then returns the result of
# concatenating the shorter string, the longer string, and the shorter
# string once again. You may assume that the strings are of different
# lengths.

# Understanding:
# 2 string inputs
# Output:
#   One string
#   Result of concatatenating shorter string, longer, shorter
# Set variable to shorter string with conditional statement
# Set variable `longer` to longer string

def short_long_short(str, str1)
  shorter = ''
  longer = ''

  if str.size < str1.size
    shorter = str
    longer = str1
  else
    shorter = str1
    longer = str
  end
  shorter + longer  + shorter 
end

# Examples:

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"
