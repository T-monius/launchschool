# clean_words.rb

# Given a string that consists of some words and an assortment of
# non-alphabetic characters, write a method that returns that string
# with all of the non-alphabetic characters replaced by spaces. If one
# or more non-alphabetic characters occur in a row, you should only
# have one space in the result (the result should never have
# consecutive spaces).

# Understanding:
# Input, string
# Task
#   Remove none alpha-numeric characters
#   Replace with a space
#   Runs of non-alphas replaced by a single space
#   GSub will replace every occurrence of a character with another
#   Squeeze will omit multiple occurrences of a particular character
#   tr_s replaces desired characters and any runs of change reduced
#   to a single character (' ')
# Output, string

def cleanup(str)
  str.tr_s('^A-Za-z', ' ')
end

# Examples:

puts cleanup("---what's my +*& line?") == ' what s my line '
