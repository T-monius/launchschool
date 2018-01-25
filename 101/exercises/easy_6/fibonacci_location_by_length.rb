# fibonacci_location_by_length.rb

# The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13,
# 21, ...) such that the first 2 numbers are 1 by definition, and
# each subsequent number is the sum of the two previous numbers. This
# series appears throughout the natural world.

# Computationally, the Fibonacci series is a very simple series, but
# the results grow at an incredibly rapid rate. For example, the
# 100th Fibonacci number is 354,224,848,179,261,915,075 -- that's
# enormous, especially considering that it takes 6 iterations before
# it generates the first 2 digit number.

# Write a method that calculates and returns the index of the first
# Fibonacci number that has the number of digits specified as an
# argument. (The first Fibonacci number has index 1.)

# You may assume that the argument is always greater than or equal to
# 2.

# Understanding:
# Input an integer
# Output an integer
# Add numbers together until the result is length of input
# Count the iterations from 1 in order to discover index

# Algorithm:
# Set counter = 0
# Set result = 0
# result = prev_num + result
# counter += 1
# break if result.length == input

def find_fibonacci_index_by_length(num)
  counter = 0
  prev_num = 1
  result = 0
  loop do
    new_num = prev_num + result
    prev_num = result
    result = new_num
    counter += 1
    break if result.to_s.length == num
  end
  counter
end

# Examples:

puts find_fibonacci_index_by_length(2) == 7
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847
