# leading_substrings.rb

# Write a method that returns a list of all substrings of a string that
# start at the beginning of the original string. The return value should be
# arranged in order from shortest to longest substring.

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

# Examples:

puts substrings_at_start('abc') == ['a', 'ab', 'abc']
puts substrings_at_start('a') == ['a']
puts substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
