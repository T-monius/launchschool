# multiply_lists.rb

# Write a method that takes two Array arguments in which each Array
# contains a list of numbers, and returns a new Array that contains
# the product of each pair of numbers from the arguments that have the
# same index. You may assume that the arguments contain the same
# number of elements.

# Understanding:
# Input, 2 arrays
# Output, array
#   Each element is the result of multiplying the elements of input
#   arrays as a given index

def multiply_list(arr, arr1)
  arr.map.with_index { |el, i| el * arr1[i] }
end

# Examples:

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
