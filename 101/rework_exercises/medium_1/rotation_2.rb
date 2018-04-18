# rotation_2.rb

# Write a method that can rotate the last n digits of a number. For
# example:

# Note that rotating just 1 digit results in the original number being
# returned.

# You may use the rotate_array method from the previous exercise if
# you want. (Recommended!)

# You may assume that n is always a positive integer.

def rotate_array(arr)
  idx_0 = arr.first
  arr[1..-1] + [idx_0]
end

# Understanding:
# Input, two integers
#   First integer to be operated on
#   Second integer represents the number of rotations
#   Simply use the previously created method to rotate the portion
#   indicated.
# Output, an integer

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

puts rotate_rightmost_digits(735291, 1) == 735291
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 4) == 732915
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 6) == 352917
