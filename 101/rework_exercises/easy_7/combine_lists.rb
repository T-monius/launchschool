# combine_lists.rb

# Write a method that combines two Arrays passed in as arguments, and
# returns a new Array that contains all elements from both Array
# arguments, with the elements taken in alternation.

# You may assume that both input Arrays are non-empty, and that they
# have the same number of elements.

# Understanding:
# Input, two arrays
# Output, one array
#   Elements from input arrays alternating
# Performing tranformation

# Algorithm:
# Iterate over both arrays simultaneously
#   Push element at index to a new array

# def interleave(arr, arr1)
#   arr.zip(arr1).flatten
# end

def interleave(arr, arr1)
  new_array = []

  arr.each_with_index { |el, idx| new_array << el << arr1[idx]}
  new_array
end

# Example:

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
