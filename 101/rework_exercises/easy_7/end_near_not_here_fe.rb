# end_near_not_here_fe.rb

# Further Exploration
# Our solution ignored a couple of edge cases because we explicitly
# stated that you didn't have to handle them: strings that contain
# just one word, and strings that contain no words.

# Suppose we need a method that retrieves the middle word of a phrase
# sentence. What edge cases need to be considered? How would you
# handle those edge cases without ignoring them? Write a method that
# returns the middle word of a phrase or sentence. It should handle
# all of the edge cases you thought of.

# Understanding:
# Input, string
# Task, identify middle word and return
#   Edge Cases:
#     Sentence has an even number of words
#     One word
#     Empty string
#   Split string
#   Count words.
#   If return word at half of count (when even word right of 'center')
#   If count is 1 or 0 return string
# Output, string

def middle_word(str)
  words = str.split
  ct = words.length
  return str if ct == 0 || ct == 1

  words[ct/2]
end

puts middle_word('Launch School is great!') == 'is'
puts middle_word('hi') == 'hi'
puts middle_word('Which of these words is in the middle?') == 'is'
puts middle_word('Jeová é o soberano universal') == 'o'
