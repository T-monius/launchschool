# odd.rb

# Understanding
# Input
#   - Single integer
# Task
#   - Determine if absolute value of the argument is odd
#   - Number is odd if the modulus of 2 division is 1
# Output
#   - boolean

def is_odd?(int)
  int % 2 == 1
end

# Test Cases
puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true
