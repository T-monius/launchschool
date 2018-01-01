# Rotation.rb

# Write a method that rotates an array by moving the first element to the
# end of the array. The original array should not be modified.

# Do not use the method Array#rotate or Array#rotate! for your
# implementation.

def rotate_array(arr)
  arr1 = arr.clone
  f = arr1.shift
  arr1 << f
end

# Example:

puts rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
puts rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
puts rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
puts rotate_array(x) == [2, 3, 4, 1]   # => true
puts x == [1, 2, 3, 4]                 # => true

# Further Exploration

# Write a method that rotates a string instead of an array. Do the same
# thing for integers. You may use rotate_array from inside your new method.

def rotate_string(str)
  arr = str.chars
  rotate_array(arr).join
end

def rotate_integer(int)
  arr = int.digits.reverse
  rotate_array(arr).join.to_i
end

puts rotate_string('Word') == 'ordW'
puts rotate_string('happiness') == 'appinessh'

puts rotate_integer(13453) == 34531
