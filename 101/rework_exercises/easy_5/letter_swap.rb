# letter_swap.rb

# Given a string of words separated by spaces, write a method that
# takes this string of words and returns a string in which the first
# and last letters of every word is swapped.

# You may assume that every word contains at least one letter, and
# that the string will always contain at least one word. You may also
# assume that each string contains nothing but words and spaces

# Understanding:
# Input, string
#   At least one character
#   Words separated by spaces
#   At least one word
# Task
#   Swap first and last letterr of each word
#   First letter word[0]
#   Last letter word[-1]
#   Ruby convention a, b = b, a
#   word[0], word[-1] = word[-1], word[0]
# Output, string
# Mutating method?

# Algorithm:
# Set variable to split sting input
# Map the array variable
# Call join with ' ' on return of mapped array

def swap(str)
  swapped_words_array = str.split.map do |word|
    word[0], word[-1] = word[-1], word[0]
    word
  end
  swapped_words_array.join(' ')
end

# Examples:

p swap('Oh what a wonderful day it is')# == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde')# == 'ebcdA'
puts swap('a')# == 'a'
