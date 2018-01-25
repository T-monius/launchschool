# all_substrings.rb

# Write a method that returns a list of all substrings of a string. The
# returned list should be ordered by where in the string the substring
# begins. This means that all substrings that start at position 0 should
# come first, then all substrings that start at position 1, and so on.
# Since multiple substrings will occur at each position, the substrings at
# a given position should be returned in order from shortest to longest.

# You may (and should) use the substrings_at_start method you wrote in the
# previous exercise:
def substrings_at_start(str)
  counter = 1
  array = str.chars
  return_array = []

  loop do
    break if counter > array.size
    return_array << array.take(counter).join
    counter += 1
  end
  return_array
end

# Understanding:
# I want to return all substrings starting from a given index
#   First index 0
#   last index == string.length - 1

# Algorithm:
# Can use a counter or an iterating method like times or upto
# Set return_array to = []
# Iterate over str
#   Call substrings_at_start on (starting index..end of string)
#   Push array returned by that method to this methods return array
# Call flatten on the return array and return

def substrings(str)
  return_arr = []

  str.length.times {|i| return_arr << substrings_at_start(str[i..-1])}
  return_arr.flatten
end

# Examples:

puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
