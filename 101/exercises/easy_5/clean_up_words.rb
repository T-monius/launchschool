# clean_up_words.rb

# Given a string that consists of some words and an assortment of
# non-alphabetic characters, write a method that returns that string
# with all of the non-alphabetic characters replaced by spaces. If
# one or more non-alphabetic characters occur in a row, you should
# only have one space in the result (the result should never have
# consecutive spaces).

# Understanding:
# Input string
# Output String
# Can use gsub to replace non-alphabetic chars *Scratch
# Format to replace multiple spurious chars with one space *Scratch
# Use tr_s to affect every non-alphabetic char

# Data Structures
# String

# Algorithm:
# Call tr_s on string substituting:
# ' 'through /, :-@, [-`, and {-~
# with ' '

def cleanup(string)
  string.tr_s(' -/:-@[-`{-~', ' ')
end

puts cleanup("---what's my +*& line?") == ' what s my line '
