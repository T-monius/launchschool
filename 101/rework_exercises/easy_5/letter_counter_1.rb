# letter_counter_1.rb

# Write a method that takes a string with one or more space separated
# words and returns a hash that shows the number of words of different
# sizes.

# Words consist of any string of characters that do not include a 
# space.

# Understanding:
# Input, string
# Enumberable#chunk
#   Gives me an associative array where the length could be the first
#   element
#   Second element all the words with that length
#   Then, iterate over the chunked array and make array.count the key
#   Value, the first element in associated arrays
# Task
#   Count number of letters in each word of a string
#   Create a hash that associates counts with number of words
# Hahs must be initialized with a default value to be able to add to it
#   dynamically.
# Output, hash
#   Number of letters 'key'
#   Number of words of particular size 'value'

# Algorithm:
# Initilize return hash
# Set array to map of split string with word counts
# Iterate over count array
#   Reference key for each element and add to it's value by 1
# Return hash

def word_sizes(str)
  str.split.group_by { |w| w.length }.transform_values { |v| v.count }
end

# Examples

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}

=begin
def word_sizes(str)
  count_hash = Hash.new(0)
  str.split.chunk { |w| w.length }.each do |length, arr|
    count_hash[length] = arr.count
  end
  count_hash
end
=end
