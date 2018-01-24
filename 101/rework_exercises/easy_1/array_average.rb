# array_average.rb

# Write a method that takes one argument, an array containing
# integers, and returns the average of all numbers in the array. The
# array will never be empty and the numbers will always be positive
# integers.

def average(arr)
  arr.sum/arr.size
end

# Test Cases:
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
