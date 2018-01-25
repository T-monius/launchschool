# fizzbuzz.rb

# Write a method that takes two arguments: the first is the starting
# number, and the second is the ending number. Print out all numbers
# between the two numbers, except if a number is divisible by 3, print
# "Fizz", if a number is divisible by 5, print "Buzz", and finally if a
# number is divisible by 3 and 5, print "FizzBuzz".

# Understanding:
# Iterate over a range of numbers
# Output num, Fizz, Buzz, or FizzBuzz
# Use Array#each for iteration as only side-effects performed, and the 
# return value is unimportant.

def fizzbuzz(int, int1)
  result = []
  (int..int1).to_a.each do |num|
    if (num % 3 == 0) && (num % 5 != 0)
      result << 'Fizz'
    elsif (num % 3 != 0) && (num % 5 == 0)
      result << 'Buzz'
    elsif (num % 3 == 0) && (num % 5 == 0)
      result << 'FizzBuzz'
    else
      result << num
    end      
  end
  result.join(', ')
end

# Example:

puts fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
puts fizzbuzz(1, 100)
