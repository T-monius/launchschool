# letter_counter.rb

# Write a method that takes a string with one or more space separated
# words and returns a hash that shows the number of words of
# different sizes.

# Words consist of any string of characters that do not include a
# space.

# Understanding:
# Input string
# Output Hash

# Data Structures:
# String
# Array
# Hash

# Algorithm:
# Method takes one parameter
# Split input string into array variable
# Set hash variable to {}
# Iterate over array
# If elememnt.length has_key?
#   hash[element.length]+= 1
# else
#   hash[element.length] = 1
# Return hash

def word_sizes(string)
  words = string.split
  word_count = {}
  words.each do |word|
    if word_count.has_key?(word.length)
      word_count[word.length]+= 1
    else
      word_count[word.length] = 1
    end  
  end
  word_count
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}
