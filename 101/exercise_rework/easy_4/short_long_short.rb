# short_long_short.rb

# Understanding:
# Input
#   + Two strings
# Task
#   + Determine which of two strings is longer
#   + Concatenate short, long, short
# Output
#   + Single string

# Approach:
#   + If str > str1 assign to longest variable and str1 to shortest
#   + else str assign tothe shortest and str1 to longest
#     - Ternary?
#   + Interpolate into return string

def short_long_short(str, str1)
  if str.length > str1.length
    longer, shorter = str, str1
  else
    shorter, longer = str, str1
  end
  "#{shorter}#{longer}#{shorter}"
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
