# stringy_strings.rb

# Write a method that takes one argument, a positive integer, and
# returns a string of alternating 1s and 0s, always starting with 1.
# The length of the string should match the given integer.

# Understanding:
# Input - integer
# Outoput - string
# Data structures - string
# The integer value itself will be the length of the string as well as
# the number of times to print string characters
# Iterate
#   if iteration is even print '1'
#   else print '0'
# Or, Iterate
#   and push to a string instead of print
#   Supposed to return a string, so go with that

def stringy(int)
  str = ''
  int.times { |i| i.even? ? str << '1' : str << '0' }
  str
end

# Examples:

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
# The tests above should print true.
