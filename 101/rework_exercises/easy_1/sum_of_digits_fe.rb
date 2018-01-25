# sum_of_digits_fe.rb

# Write a method that takes one argument, a positive integer, and 
# returns the sum of its digits.
# For a challenge, try writing this without any basic looping 
# constructs (while, until, loop, and each).

# Understanding:
# If I convert to a string and use String#split, I get an array of the
# string characters that represent the integer's digits.

def sum(int)
  int.to_s.chars.inject(0) { |t, e| t + e.to_i }
end

# Test cases:
p sum(23) == 5
p sum(496) == 19
p sum(123_456_789) == 45
