# multiply_pairs.rb

# Write a method that takes two Array arguments in which each Array
# contains a list of numbers, and returns a new Array that contains
# the product of every pair of numbers that can be formed between the
# elements of the two Arrays. The results should be sorted by
# increasing value.

# You may assume that neither argument is an empty Array.

# Understanding:
# Input, two arrays
#   Array elements all integers
# Task
#   Get all combinations of products between two arrays
#   1) Divide into all combinations of two arrays first
#      Then, multiply the combinations
#   2) Multiply the combinations while iterating and store the result
# Output
#   Array
#     Elements all integers
#     Product of all combinations of elements of the two arrays

def multiply_all_pairs(arr, arr1)
  arr.product(arr1).map { |arr| arr.inject(:*) }.sort
end

# Examples:

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
