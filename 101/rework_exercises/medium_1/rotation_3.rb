# rotation_3.rb

# If you take a number like 735291, and rotate it to the left, you get
# 352917. If you now keep the first digit fixed in place, and rotate
# the remaining digits, you get 329175. Keep the first 2 digits fixed
# in place and rotate again to 321759. Keep the first 3 digits fixed
# in place and rotate again to get 321597. Finally, keep the first
# digits fixed in place and rotate the final 2 digits to get 321579.
# The resulting number is called the maximum rotation of the original
# number.

# Write a method that takes an integer as argument, and returns the
# maximum rotation of that argument. You can (and probably should) use
# the rotate_rightmost_digits method from the previous exercise.

# Understanding:
# Input, integer
# Task
#   Perform max rotation
#   Use the lentgth of the int and rotate it at that digit on a negative
#   index
#   Rotate the newly returned number at the penultimate negative index
#   Continue to rotate at increasingly smaller negative indexes until
#   no more rotations left.
#   Good candidate for recursion
# Output, integer
#   Max rotated

def rotate_array(arr)
  idx_0 = arr.first
  arr[1..-1] + [idx_0]
end

def rotate_rightmost_digits(int, sub_portion)
  num_array = int.digits.reverse
  front_length = num_array.length - sub_portion
  front_array = num_array.take(front_length)
  back_array = num_array[-sub_portion..-1]
  rotated_array = front_array + rotate_array(back_array)
  result_int = rotated_array[0]
  idx = 1

  loop do
    break if idx >= rotated_array.length

    result_int = result_int * 10 + rotated_array[idx]
    idx += 1
  end
  result_int
end

def max_rotation(int, rotations=0)
  rotations = int.to_s.length if rotations == 0
  return int if rotations == 1
  new_int = rotate_rightmost_digits(int, rotations)
  max_rotation(new_int, rotations - 1)
end

# Example:

puts max_rotation(735291) == 321579
puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(8_703_529_146) == 7_321_609_845
