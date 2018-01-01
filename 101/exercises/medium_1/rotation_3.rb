# rotation_3.rb

require 'pry'

# If you take a number like 735291, and rotate it to the left, you get
# 352917. If you now keep the first digit fixed in place, and rotate the
# remaining digits, you get 329175. Keep the first 2 digits fixed in place
# and rotate again to 321759. Keep the first 3 digits fixed in place and
# rotate again to get 321597. Finally, keep the first 4 digits fixed in
# place and rotate the final 2 digits to get 321579. The resulting number
# is called the maximum rotation of the original number.

# Write a method that takes an integer as argument, and returns the maximum
# rotation of that argument. You can (and probably should) use the
# rotate_rightmost_digits method from the previous exercise.

def rotate_array(arr)
  arr1 = arr.clone
  f = arr1.shift
  arr1 << f
end

def rotate_rightmost_digits(number, rotations)
  array = number.digits.reverse
  array1 = []
  rotations.times { array1.unshift(array.pop) }
  array_1 = rotate_array(array1)
  array += array_1
  array.join.to_i
end

# Understanding1:
# Divide number into two
#   Part to be kept
#   Part to be rotated
#   Reset
# Can use divmod to divide
# Can use Array#take and Array#drop
# Rotate right side
# Re-join to left side
# Recursive, looping, or iterative solution

# Algorithm:
# 
=begin
def max_rotation1(int, counter=0)
  return int if counter == int.size
  digs = int.digits.reverse
  left = digs.take(counter)
  right = digs.drop(counter)
  digs = left + rotate_array(right)
  int = digs.join.to_i
  counter += 1
  max_rotation(int, counter)
end
=end

# Understanding:
# I can't do it recursively if using the rotate_rightmost_digits method
# because of the counter
# I'd reset the counter to the array size every time unless I figured
# out how to set that only once
# Set counter to number size
# Set return integer to rotation w/ counter digits
# Separate left part from the right
# 

def max_rotation(int)
  counter = int.to_s.length
  loop do
    break if counter == 1
    int = rotate_rightmost_digits(int, counter)
    counter -= 1 
  end
  int
end

# Example:

puts max_rotation(735291) == 321579
puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(8_703_529_146) == 7_321_609_845


# Understanding:
# Can use a counter to remove x digits from beginning of number
# Add a buffer digit
#   0th digit(buffer) removed before first rotation
#   (0..counter) digits removed at each rotation
# Or, rotate once
# Set counter
# Loop removing (0..counter) digits
# Rotate

# Algorithm:
# Set digits variable to rotated number
# Set counter to 0
# Set two empty arrays to left and right side of digits array
# loop over digits variable
#   break if counter == digits.size
#   left = digits[0..counter]
#   right = digits[(counter + 1)..-1]
#   right = rotate_array(right)
#   digits = left + right
#   counter += 1
# digits.join.to_i
=begin
def max_rotation(num)
  digs = rotate_array(num.digits.reverse)
  counter = 0
  left = []
  right = []

  loop do
    break if counter == digs.size

    left = digs[0..counter]
    right = digs[(counter + 1)..-1]
    right = rotate_array(right)
    digs = left + right
    counter += 1
  end
  digs.join.to_i
end
=end
