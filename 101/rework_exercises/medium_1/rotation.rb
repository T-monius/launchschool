# rotation.rb

# Write a method that rotates an array by moving the first element to
# the end of the array. The original array should not be modified.

# Do not use the method Array#rotate or Array#rotate! for your
# implementation.

# Understanding:
# Input, array
# Task
#   Take the first element of the input array
#   Remove
#   Append to the end of the array w/o mutating
# Output, new_array

def rotate_array(arr)
  idx_0 = arr.first
  arr[1..-1] + [idx_0]
end

# Example:

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
puts rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
puts rotate_array(['a']) == ['a']

puts x = [1, 2, 3, 4]
puts rotate_array(x) == [2, 3, 4, 1]   # => true
puts x == [1, 2, 3, 4]                 # => true
