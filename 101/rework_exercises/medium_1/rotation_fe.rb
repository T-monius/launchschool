# rotation_fe.rb

# Further Exploration
# Write a method that rotates a string instead of an array. Do the
# same thing for integers. You may use rotate_array from inside your
# new method.

def rotate_array(arr)
  idx_0 = arr.first
  arr[1..-1] + [idx_0]
end

def rotate_string(str)
  rotate_array(str.chars).join
end

# Understanding;
# Need to take an array of single digit integers and combine into a single
# integer with base ten math
# Each position from the left to the rigth is a power of 10 larger than
# the number to the right
# Take index 0 and multiply by ten
# Add index 1
# Multiply by ten, etc
# Iterate over the array multiplying by 10 after 

def rotate_integer(int)
  rotated_array = rotate_array(int.digits.reverse)
  result_int = rotated_array[0]
  idx = 1

  loop do
    break if idx >= rotated_array.length

    result_int = result_int * 10 + rotated_array[idx]
    idx += 1
  end
  result_int
end

puts rotate_string("hello") == 'elloh'
p rotate_integer(12354) == 23541
