# fizzbuzz.rb

# Write a method that takes two arguments: the first is the starting
# number, and the second is the ending number. Print out all numbers
# between the two numbers, except if a number is divisible by 3, print
# "Fizz", if a number is divisible by 5, print "Buzz", and finally if a
# number is divisible by 3 and 5, print "FizzBuzz".

# Understanding:
# Method
# Input, two integers
# Task,
#   Consider every number in a range to determine output
# Output, print to std output
#   Print for every number in a range
#   Either number string or alpha string printed

# Algorithm
# Range
# Iterate over range
# String representation of element at iteration outputted if not one
# of two criteria
# If two criteria, print 'FizzBuzz'
# Elsif first criteria 'Fizz'
# Elsif second criteria 'Buzz'

def fizzbuzz(arg, arg1)
  range_count = (arg..arg1).size
  (arg..arg1).each_with_index do |number, idx|
    if number % 5 == 0 && number % 3 == 0
      print "FizzBuzz"
    elsif number % 5 == 0 && number % 3 != 0
      print "Buzz"
    elsif number % 5 != 0 && number % 3 == 0
      print "Fizz"
    else
      print number
    end
    print ", " if idx < range_count - 1
  end
  puts ""
end

# Example:

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11,
                # Fizz, 13, 14, FizzBuzz