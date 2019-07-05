# uppercase_check.rb
require 'pry'

# Write a method that takes a string argument, and returns true if all
# of the alphabetic characters inside the string are uppercase, false
# otherwise. Characters that are not alphabetic should be ignored.

# Understanding:
# Input,
#   String
#   Evaluate string to see if characters are uppercase
#   Non-alpha characters are ignored.
# Output
#   Boolean
#   False if not all of the characters in a string are uppercased

# Algorithm:
# Iterate over a string
#   If we iterate through the whole string w/o returning false for a 
#   character, return false
#   If a char is alpha
#     If uppercase, keep iterating
#     Else return false
#   If char is non-alpha, keep iterating

def uppercase?(str)
  all_upper = true
  str.chars.each do |char|
    all_upper = false if ('a'..'z').include?(char)
  end
  all_upper
end

# Examples:

puts uppercase?('t') == false
puts uppercase?('T') == true
puts uppercase?('Four Score') == false
puts uppercase?('FOUR SCORE') == true
puts uppercase?('4SCORE!') == true
puts uppercase?('') == true
