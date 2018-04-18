# sum_square.rb

# Write a method that computes the difference between the square of
# the sum of the first n positive integers and the sum of the squares
# of the first n positive integers.

# Understanding:
# The square of the sum is every number from 1 to n added together
# then squared.
#   

# Algorithm:
# push all numbers from 1 upto n to an array
# square_sum
#   invoke sum on the array and square the return value
# sum_square
#   map the array squaring all the elements
#   sum the array
# Subtract square_sum from sum_square

def sums_squared(arr)
  arr.sum ** 2
end

def squares_summed(arr)
  squares = arr.map { |num| num ** 2 }
  squares.sum
end

def sum_square_difference(number)
  positive_ints = []
  1.upto(number) { |n| positive_ints << n }
  sums_squared(positive_ints) - squares_summed(positive_ints)
end

# Examples:

puts sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
puts sum_square_difference(10) == 2640
puts sum_square_difference(1) == 0
puts sum_square_difference(100) == 25164150
