# sum_of_digits_2.rb
# Write a method that takes one argument, a positive integer, and 
# returns the sum of its digits.
# For a challenge, try writing this without any basic looping 
# constructs (while, until, loop, and each).

# Understanding:
# Can use recursion instead of iteration
# Input integer
# Output integer
# Convert input to string array
# Split string into an array
# Pop off last element of array
# Convert element to integer
# Add integer to sum
# Call recursion
# Return sum if string array empty

# Algorithm:
# Return sum_var if array.empty?
# Set 'sum_var' to 0
# Set num_str to_s on input num
# Set array to .split on num_str
# Set sum_var to += .pop element from array and to_i
# If array empty return sum_var
# Call .sum on array joined back into integer 

def sum (num, sum_var= 0)
  num_str = num.to_s
  array = num_str.split('')
  sum_var += array.pop.to_i
  if array.empty?
    return sum_var
  end
  sum(array.join.to_i, sum_var)
end

# Test cases:
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45