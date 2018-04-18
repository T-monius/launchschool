# list_include.rb

# Write a method named include? that takes an Array and a search value
# as arguments. This method should return true if the search value is
# in the array, false if it is not. You may not use the Array#include?
# method in your solution.

# Understanding:
# Input, two items
#   arr
#   integer
#   Search array to see if integer is present
# Output, boolean

# Algorithm:
# Set flag variable
# Set counter
# Iterate over the array
#   Compare element to element at index
#   If equal
#     flip flag
#     break

def include?(arr, int)
  exist = false
  idx = 0

  loop do
    break if idx == arr.length
    if int == arr[idx]
      exist = !exist
      break
    end
    idx += 1
  end
  exist
end

puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false
