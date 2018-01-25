# fibonacci_numbers.rb

# Write a recursive method that computes the nth Fibonacci number,
# where nth is an argument to the method.

# Understanding:
# Very similar to the sum method
# The difference is that it's not just the sum of previous numbers
# Each number is the sum of the two previous numbers.
# Fibonacci numbers grow much more quickly than a sum of previous numbers
# Return if number is equal to 2 since the previous call already 
# accounted for adding n-2 which would account for one when number
# is three even though 2 is never technically operated on.
# 

def fibonacci(number)
  return 1 if number < 3
  fibonacci(number - 1) + fibonacci(number - 2)
end

puts fibonacci(1) == 1
puts fibonacci(2) == 1
puts fibonacci(3) == 2
puts fibonacci(4) == 3
puts fibonacci(5) == 5
puts fibonacci(12) == 144
puts fibonacci(20) == 6765
