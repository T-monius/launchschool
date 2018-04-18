# all_substrings.rb

# Write a method that returns a list of all substrings of a string. The
# returned list should be ordered by where in the string the substring
# begins. This means that all substrings that start at position 0 should
# come first, then all substrings that start at position 1, and so on.
# Since multiple substrings will occur at each position, the substrings
# at a given position should be returned in order from shortest to
# longest.

# You may (and should) use the substrings_at_start method you wrote in
# the previous exercise:

# Understanding:
# Iterate
#   At each iteration, push the return of the the helper method to the
#   return array
#   The index for iteration represents where substring starts

def substrings_at_start(str)
  counter = 0
  string_arr = []
  loop do
    break if counter == str.length
      string_arr << str[0..counter]
    counter += 1
  end
  string_arr
end

def substrings(str1)
  idx = 0
  all_substrings = []
  loop do
    break if idx == str1.length
    all_substrings << substrings_at_start(str1[idx..-1])
    idx += 1
  end
  all_substrings.flatten
end

# Examples:

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
