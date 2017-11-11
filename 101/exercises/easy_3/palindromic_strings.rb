# palandromic_strings.rb

# Write a method that returns true if the string passed as an
# argument is a palindrome, false otherwise. A palindrome reads the
# same forward and backward. For this exercise, case matters as does
# punctuation and spaces.

# Understanding:
# Method input == string
# Since capitalization does matter, don't need to modify string(i.e
# downcase everything)
# Punctuation matters, so no need to modify punctuation.
# Simply reverse the string and compare

# Algorithm: 
# Input == input.reverse

# Further Exploration

# Write a method that determines whether an array is palindromic;
# that is, the element values appear in the same sequence both
# forwards and backwards in the array. Now write a method that
# determines whether an array or a string is palindromic; that is,
# write a method that can take either an array or a string argument,
# and determines whether that argument is a palindrome. You may not
# use an if, unless, or case statement or modifier.

# Understanding:
# As I read the 'further explanation', I'd infer that a palinromic
# array be: ['a', 'b', 'a']...
# Thus, you can use the same algorithm.

def palindrome?(string)
  string == string.reverse
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true
