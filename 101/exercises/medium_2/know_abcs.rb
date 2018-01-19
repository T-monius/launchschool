# know_abcs.rb

# A collection of spelling blocks has two letters per block, as shown
# in this list:
=begin
B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M
=end
# This limits the words you can spell with the blocks to just those
# words that do not use both letters from any given block. Each block
# can only be used once.

# Write a method that returns true if the word passed in as an argument
# can be spelled from this set of blocks, false otherwise.

# Understanding:
# Input, string
# Output, boolean
# Data Structures
#   Two letters are on each block.
#   How should I represent these letters?
#   The letters are associated with each other but not in a key/value
#   relationship.
#   Although, I could iterate over the word an approve it as long as
#   once a letter is called, it's value is not included in the rest of
#   the word.
#   This would reflect a key value relationship to a certain extent.
#   However, it would have to go both ways.
#   Two hashes where key value relationship is swapped for each block?
#   It would be convenient to iterate and make sure the succeeding string
#   does not include the value for that given letter because I'd only
#   have to consider the following characters since it'd presume that the 
#   preceding have already been checked.

# Algorithm:
# Create two constants with letters as key/value pairs. (one hash opposite
# of the other)
# Iterate over the input string.
# Find appropriate hash to work with according to character
# Set variable to value for that character
# return false if value is found in rest of the string
# continue iterating otherwise
# return true no value for any of the given keys(letters) is returned.

BLOCK = { B: 'O', X: 'K', D: 'Q', C: 'P', N: 'A', G: 'T', R: 'E', F: 'S',
          J: 'W', H: 'U', V: 'I', L: 'Y', Z: 'M' }
BLOCK1 = { O: 'B', K: 'X', Q: 'D', P: 'C', A: 'N', T: 'G', E: 'R', S: 'F',
           W: 'J', U: 'H', I: 'V', Y: 'L', M: 'Z' }

# Test string for given value method
#   Need to have a counter argument as well as a string argument
#   Also, appropriate block argument
def associated_value?(blk, sym, str)
  doppelganger = blk[sym]
  str.include?(doppelganger)
end

def block_word?(str)
  counter = 0
  loop do
    return true if counter == str.size
    symbol = str[counter].upcase.to_sym
    rest_of_str = str[(counter + 1)..-1]
    # This is repetitive and can be extracted to a method.
    if BLOCK.key?(symbol)
      return false if associated_value?(BLOCK, symbol, rest_of_str)
    else
      return false if associated_value?(BLOCK1, symbol, rest_of_str)
    end
    counter += 1
  end
end

# Examples:

puts block_word?('BATCH') == true
puts block_word?('BUTCH') == false
puts block_word?('jest') == true

# Other Understanding:
# I believe there is a pattern as to why each letter is associated with
# the next.
#   They are each 13 off from one another in the alphabet
#   This could be used to solve the problem as well.
# Can find a letter's doppelganger by adding 13 to it's 'ord' value if
# if it's 77 or less
# If a letter's 'ord' value is 78 or greater, subtract 13 from it's value
# to get it's doppleganger.

# Algorithm:
# Set counter to 0
# Loop to iterate over the string
# Set doppleganger of string character
# If rest of string includes the doppleganger then return false

def block_word1?(str)
  counter = 0
  loop do
    return true if counter == str.size
    char = str[counter].upcase
    ascii_value = char.ord
    rest_of_str = str[(counter + 1)..-1]
    if ascii_value <= 77
      doppleganger = (ascii_value + 13).chr
      return false if rest_of_str.include?(doppleganger)
    else
      doppleganger = (ascii_value - 13).chr
      return false if rest_of_str.include?(doppleganger)
    end
    counter += 1
  end
end

# Examples:
puts block_word1?('BATCH') == true
puts block_word1?('BUTCH') == false
puts block_word1?('jest') == true
