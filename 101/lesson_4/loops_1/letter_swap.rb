# letter_swap.rb

# Given a string of words separated by spaces, write a method that
# takes this string of words and returns a string in which the first
# and last letters of every word is swapped.

# You may assume that every word contains at least one letter, and
# that the string will always contain at least one word. You may also
# assume that each string contains nothing but words and spaces.

# Understanding:
# Input string
# Output string

# Algorithm:
# Split
# Iterate over each array element
# Store first char of string element in variable
# Assign last string index to first index
# Assign variable to last index
# Rejoin array

def swap(sentence)
  sentence = sentence.split.map do |word|
    first_letter = word[0]
    word[0] = word[-1]
    word[-1] = first_letter
    word
  end
  sentence.join(' ')
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'
