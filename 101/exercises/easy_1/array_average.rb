# Write a method that takes one argument, an array containing
# integers, and returns the average of all numbers in the array. The
# array will never be empty and the numbers will always be positive
# integers.

# Understanding:
# Input array of integers
# Output true/false
# Add all elements
# Divide sum by number of elements

# Algorithm:
# Start
# Set variable 'sum' to 0
# Input array .each adding index value to sum at each iteration
# Set variable average to sum divided by input array.size

def average arr
  sum = 0
  arr.each {|i| sum += i}
  average = sum/(arr.size)   
end 

# Test Cases:
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40