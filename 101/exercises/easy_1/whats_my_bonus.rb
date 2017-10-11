# whats_my_bonus.rb

# Write a method that takes two arguments, a positive integer and a
# boolean, and calculates the bonus for a given salary. If the
# boolean is true, the bonus should be half of the salary. If the
# boolean is false, the bonus should be 0.

# Understanding:
# Input one integer and one boolean
  # Validate integer?
# Perform operation on input
# Output result of operation as integer

# Algorithm:
# Define method with two parameters
# If/else statement to perform operation if true or return zero
# True, divide first argument by 2 and return

def calculate_bonus salary, bool
  if bool == true
    salary/2
  else
    return 0
  end
end

# Test Cases:
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
