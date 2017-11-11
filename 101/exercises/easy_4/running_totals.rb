# running_totals.rb

# Write a method that takes an Array of numbers, and returns an Array
# with the same number of elements, and each element has the running
# total from the original Array.

# Understanding:
# Input array
# Array evaluated and each number subsequent to start added to
# The previous evaluation will be added to the subsequent number
# How to iterate over each element while carring a value?
#   Have variable outside of iteration that is added to
#   Assign element to variable plus self
#   Re-set variable to same value

# Algorithm
# define method with one parameter
# Set variable to 0
# Call map! on array parameter
# Set variable to self plus element

def running_total(array)
  total = 0
  array.map do |e|
    total += e
  end
  total
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []
