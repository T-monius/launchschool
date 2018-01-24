# odd.rb

# Write a method that takes one integer argument, which may be
# positive, negative, or zero. This method return true if the
# number's absolute value is odd. You may assume that the argument is
# a valid integer value.

# Understanding:
# Input single integer
# Output boolean
# Validate? what if a float for ex...?
# Can't use Integer#odd or Integer#even methods
# Can determine 'odd' or 'even' with '%' modulus

# Algorithm:
# Define method with one parameter
# Since method definition uses '?'
# If/else statement to return 'true' or 'false'
#   (otherwise, could just return true or nil for false)
#   if int modulus 2 is 0 return false

def is_odd?(int)
  if int % 2 == 0
    false
  else
    true
  end
end

# Examples:

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

# Keep in mind that you're not allowed to use #odd? or #even? in your
# solution.
