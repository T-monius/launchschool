# end_near_not_here_fe.rb

# Our solution ignored a couple of edge cases because we explicitly stated
# that you didn't have to handle them: strings that contain just one word,
# and strings that contain no words.

# Suppose we need a method that retrieves the middle word of a phrase/
# sentence. What edge cases need to be considered? How would you handle
# those edge cases without ignoring them? Write a method that returns the
# middle word of a phrase or sentence. It should handle all of the edge
# cases you thought of.

# Edge Cases:
# For a word to be in the 'middle' of a phrase the phrase would have to have
# an odd number of words.
#   For an even array, you could simply return one of the words adjacent to
#   the center or both words.
# String of 1 or less words entered

def penultimate(str)
  arr = str.split
  split_point = arr.size/2
  
  if arr.size <= 1
    return str
  elsif arr.size.odd?
    return arr[-(split_point + 1)]
  elsif arr.size.even?
    return arr[-split_point]
  end
end

puts penultimate('last word') == 'word'
puts penultimate('Launch School is great!') == 'is'
puts penultimate('') == ''
puts penultimate('justa') == 'justa'
puts penultimate('Launch School the is greatest!') == 'the'
puts penultimate('This is going to be a really extemely long string.') == 'a'