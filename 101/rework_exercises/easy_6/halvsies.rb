# halvsies.rb

# Write a method that takes an Array as an argument, and returns two
# Arrays that contain the first half and second half of the original
# Array, respectively. If the original array contains an odd number of
# elements, the middle element should be placed in the first half
# Array.

# Understanding:
# Input, array
# Output,nested array
#   Two array elements
#   First array has one more element if odd number of elements

# Algorithm
# Set variable to split point
# Drop split point number of elements into new array variable pushing
# to return array
# Push array with remaining elements to the return array

def halvsies(arr)
  split_point = (arr.length/2 + 1) if arr.size.odd?
  split_point = (arr.length/2) if arr.size.even?
  nested_array = []

  nested_array << arr.take(split_point)
  nested_array << arr.drop(split_point)
  nested_array
end

# Examples:

puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]
