# leading_substrings.rb

# Write a method that returns a list of all substrings of a string that
# start at the beginning of the original string. The return value should
# be arranged in order from shortest to longest substring.

# Understanding
# Input, string
#   Strings are 0 indexed collections
#   Iteration over the input string
#   Pushing increasingly longer sub-portion of string to the array at
#   each iteration
# Output, array of strings
#   lengths from ascending index one character longer than previous

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

def substrings_at_start1(str1)
  idx = 0
  str_arr = []
  str1.each_char do |char|
    str_arr << str1[0..idx]
    idx += 1
  end
  str_arr
end

# Examples:

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

p substrings_at_start1('abc') == ['a', 'ab', 'abc']
p substrings_at_start1('a') == ['a']
p substrings_at_start1('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
