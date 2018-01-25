# reverse_it2.rb 

# Write a method that takes one argument, a string containing one or
# more words, and returns the given string with all five or more letter
# words reversed. Each string will consist of only letters and spaces.
# Spaces should be included only when more than one word is present.

# Understanding:
# Input: String
# Output: String
# Transformation
# Change five or more letter words to reverse of themselves
# Split string
# Iterate over split array
# If word is longer than 5 characters reverse it.
# Use map for iteration and store in a new variable or call join on
# return value of the block.

def reverse0(str)
  reverse_string = ''
  counter = 1

  loop do
    break if counter > str.size
    reverse_string << str[-counter]
    counter += 1
  end
  reverse_string
end

def reverse_words(string_input)
  string_array = string_input.split.map do |word|
    if word.size > 4
      word.reverse
    else
      word
    end
  end
  string_array.join(' ')
end

# Examples:

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
