# halvsies.rb

# Write a method that takes an Array as an argument, and returns two
# Arrays that contain the first half and second half of the original
# Array, respectively. If the original array contains an odd number
# of elements, the middle element should be placed in the first half
# Array.

def halvsies(array)
  first_array_count = (array.length/2.0).round
  first_array = array.shift(first_array_count)
  [first_array, array]
end

# Examples:

puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]