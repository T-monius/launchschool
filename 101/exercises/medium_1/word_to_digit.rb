# word_to_digit.rb

# Write a method that takes a sentence string as input, and returns
# the same string with any sequence of the words 'zero', 'one',
# 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine'
# converted to a string of digits.

# Understanding:
# Input string
# Must parse string
# Separate each word to individual words in an array
# Will perform transformation
# Iterate over the array and push words to a new array either
# changed or the same as they are
# Change words
#   Can use a hash to associate values with words
#   Due to punctuation, must use some mathching structure to either
#   identify matches that are in hash but for punctuation
#   Use array of keys
#     Iterate over key_array to see if there is a match on word v. key
#     If match, use gsub to change word to associated value
#   or, 

# Algorithm:
# Set word_array == string.split
# Set digit_string = []
# Set words = DIGIT_ASSOCIATION.keys
# Call each on word_array
# Push word to digit_array if not in hash
# Identify match
#   
#   Push hash modified word to digit_array if in hash
# return digit_string

DIGIT_ASSOCIATION = { 'one' => '1', 'two' => '2', 'three' => '3',
                      'four' => '4', 'five' => '5', 'six' => '6',
                      'seven' => '7', 'eight' => '8', 'nine' => '9' }

def word_to_digit(string)
  digit_array = []
  words = DIGIT_ASSOCIATION.keys

  string.split.each do |word|
    modified_word = ''
    words.each do |keyword|
      if word.match(keyword)
        modified_word = word.gsub(keyword, DIGIT_ASSOCIATION[keyword])
      end
    end
    if modified_word == ''
      digit_array << word
    else
      digit_array << modified_word
    end
  end
  digit_array.join(' ')
end

# Example:

puts word_to_digit('Please call me at five five five one two three four. Thanks.') ==
                  'Please call me at 5 5 5 1 2 3 4. Thanks.'
