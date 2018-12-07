# reverse_it2.rb

# Understanding:
# Write a method
# Input, a single string
#   - Words in the string are separated by spaces
#   - If a word is five letters or more reverse it
#   
# Output
#   - A string with all words (5 or more letter ones reverse)

def reverse_words(str)
  str_arr = str.split.map do |word|
    if word.length >= 5
      word.reverse
    else
      word
    end
  end
  str_arr.join(' ')
end

# Test Cases
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
