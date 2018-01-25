# end_near_not_here.rb

# Write a method that returns the next to last word in the String passed to
# it as an argument.

# Words are any sequence of non-blank characters.

# You may assume that the input String will always contain at least two
# words.

def penultimate(str)
  arr = str.split
  arr[-2]
end

#Examples:

puts penultimate('last word') == 'last'
puts penultimate('Launch School is great!') == 'is'
