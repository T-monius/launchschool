# multiply_lists.rb

# Write a method that takes two Array arguments in which each Array
# contains a list of numbers, and returns a new Array that contains the
# product of each pair of numbers from the arguments that have the same
# index. You may assume that the arguments contain the same number of
# elements.

# Understanding:
# Input array
# Output array
# Can use looping and one counter
#   Counter/index the same for both arrays
#   Push result of arrays[counter] to new array
#   Or, assign third array[counter] to product of both input arrays at counter
# Return new array with same number of indexes

# Data structures
# Array inputs (x2)
# Integer elements of arrays
# Counter represents integer index
# Third array output

# Algorithm:
# Start program when method called
# Set return array to empty array
# Set counter to 0
# loop
#   break if counter == first array.size
#   Push product of 1st array[counter] * 2nd array[counter] to return array
#   increase counter
# Return return array

def multiply_list(arr, arr1)
  product_array = []
  idx = 0

  loop do
    break if idx == arr.size

    product_array << arr[idx] * arr1[idx]
    idx += 1
  end
  product_array
end

def multiply_list1(arr, arr1)
  arr.map.with_index { |_, i| arr[i] * arr1[i] }
end

# Examples:

puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
puts multiply_list1([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
