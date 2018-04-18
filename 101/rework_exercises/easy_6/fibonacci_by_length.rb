# fibonacci_by_length.rb

# The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13,
# 21, ...) such that the first 2 numbers are 1 by definition, and each
# subsequent number is the sum of the two previous numbers. This
# series appears throughout the natural world.

# Computationally, the Fibonacci series is a very simple series, but
# the results grow at an incredibly rapid rate. For example, the 100th
# Fibonacci number is 354,224,848,179,261,915,075 -- that's enormous,
# especially considering that it takes 6 iterations before it
# generates the first 2 digit number.

# Write a method that calculates and returns the index of the first
# Fibonacci number that has the number of digits specified as an
# argument. (The first Fibonacci number has index 1.)

# Understanding:
# Fibonacci number is equal to the sum of the two previous numbers
# Input, integer
#   Represents number of digits of a number in the series
# Task
#   Starting with first two numbers in the sequence, can derive others
#   Can start iterating from index 
# Output, integer
#   Index of first number that fits the input criteria

# Algorithm:
# Set the first two numbers to 1
# Set the current fibonaacci number to 2
# Set index to 3
# Iterate
#   Set the current number to sum of previous too
#   Break if current numer length matches input criteria
#   Set 2 previous variable to 1 previous
#   Set 1 previous variable to current
#   Increment index
# Return index

def find_fibonacci_index_by_length(desired_length)
  two_prior = 1
  one_prior = 1
  current_fib = 0
  idx = 3

  loop do
    current_fib = two_prior + one_prior
    break if current_fib.to_s.length == desired_length
    two_prior = one_prior
    one_prior = current_fib
    idx += 1
  end
  idx
end

# Examples:

puts find_fibonacci_index_by_length(2) == 7
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847
# You may assume that the argument is always greater than or equal to
# 2.
