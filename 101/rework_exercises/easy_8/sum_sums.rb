# sum_sums.rb

# Write a method that takes an Array of numbers and then returns the
# sum of the sums of each leading subsequence for that Array. You may
# assume that the Array always contains at least one number.

# Understanding:
# Input, arr
#   Task, find sum of sums
#   Leading sequences are the various sequences of numbers starting
#   from the first index of the array to the end.
#   Find all the sequences in a given array
#   Add the numbers from all the sequences together
# Output, integer

# Algorithm:
# Create a separate method to find a single sequence from idx 0 to other?
# Iterate over as many times as there are elements
# Push elements from original array to a new array while adding them
# Add elements of new array returning result

def sum_of_sums(arr)
  return_arr = []
  arr.length.times { |i| return_arr << arr.take(i + 1).sum }
  return_arr.sum
end

# Examples:

puts sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
puts sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
puts sum_of_sums([4]) == 4
puts sum_of_sums([1, 2, 3, 4, 5]) == 35
