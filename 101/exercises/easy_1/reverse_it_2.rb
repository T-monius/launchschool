# reverse_it_2.rb
# Write a method that takes one argument, a string containing one or
# more words, and returns the given string with all five or more
# letter words reversed. Each string will consist of only letters
# and spaces. Spaces should be included only when more than one word
# is present.

# Understand:
# Input string of characters. Letters and spaces only.
# If a word is more than five letters, reverse it.
# Output string of characters

# Abstraction
# Within method Set an array variable to input string .split
# Call .map on array variable
# if/else loop to call reverse on words 5 and more characters
# Return the result of .join with a space on array.

def reverse_words (string)
  array = string.split
  array.map! {|word| 
    if word.length >= 5
      word.reverse  
    else 
      word
    end
  }
  return array.join(' ')  
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS