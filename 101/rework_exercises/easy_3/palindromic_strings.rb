# palindromic_strings.rb

# Write a method that returns true if the string passed as an argument
# is a palindrome, false otherwise. A palindrome reads the same
# forward and backward. For this exercise, case matters as does
# punctuation and spaces.

# Understanding:
# Palindrome is the same forward and backwards
# Return a boolean
# Case sensitive
#   can just reverse

def palindrome?(str)
  backwards_string = str.reverse
  str == backwards_string
end

# Examples:

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true
