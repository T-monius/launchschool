# find_missing_numbers.rb

# Understanding:
# Write a method
# Input,
#   - Sorted array
#     + Integers
# Task
#   - Find numbers between array elements of input array
#   - Push these elements to a new array
#   - Breakdown
#     > Need to find numbers between any two numbers
# Output
#   - New sorted array of elements missing between input
#     array elements

# Approach:
# Iterate over array
#   - Test current element with following to see if a gap
#     > If gap have a sub-iteration iterate from current number
#       up to the following
#     > Push all of the in betwwen elements to return array
#     > No gap, continue iteration

def missing(arr)
  missing_numbers = []
  counter = 0
  next_index = 1
  loop do
    break if next_index == arr.size
    next_greater = arr[counter] + 1
    # gap between this number and the next
    if (next_greater != arr[next_index])
      next_greater.upto(arr[next_index] - 1) do |num|
        missing_numbers << num
      end
    end
    counter += 1
    next_index += 1
  end
  missing_numbers
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []
