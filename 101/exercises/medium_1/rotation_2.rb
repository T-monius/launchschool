# rotation_2.rb

# Write a method that can rotate the last n digits of a number.

def rotate_array(arr)
  arr1 = arr.clone
  f = arr1.shift
  arr1 << f
end

def rotate_integer(int)
  arr = int.digits.reverse
  rotate_array(arr).join.to_i
end

# Understanding:
# Method takes two arguments
# First argument is an integer
# Second argument is an integer
# Remove the last n digits of the first integer
#   n is equal to the second integer
#   Digits removed are rotated
#   Digits re-appended to the original number after rotation
# Convert the number to an array to perform rotations

# Algorithm:
# Set array variable to first argument .digits.reverse
# Set second array to empty
# n.times { array.pop adding to second array }
# Call rotate_array on second array
# Add second array to first
# Call.join.to_i on array

def rotate_rightmost_digits(number, rotations)
  array = number.digits.reverse
  array1 = []
  rotations.times { array1.unshift(array.pop) }
  array_1 = rotate_array(array1)
  array += array_1
  array.join.to_i
end

# For example:
puts rotate_rightmost_digits(735291, 1) == 735291
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 4) == 732915
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 6) == 352917
# Note that rotating just 1 digit results in the original number being
# returned.

# You may use the rotate_array method from the previous exercise if you
# want. (Recommended!)

# You may assume that n is always a positive integer.
