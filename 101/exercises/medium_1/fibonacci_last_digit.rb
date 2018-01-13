# fibonacci_last_digit.rb

# In the previous exercise, we developed a procedural method for
# computing the value of the nth Fibonacci numbers. This method was
# really fast, computing the 20899 digit 100,001st Fibonacci sequence
# almost instantly.

# In this exercise, you are going to compute a method that returns
# the last digit of the nth Fibonacci number.

# Understanding:
# I can already calculate the nth fibonacci number with my previous
# procedural method.
# Call that method from the other one and store the return value in
# a variable.
# Variable value will be an integer
# Can either break down the integer mathematically to isolate a 
# particular place in the integer (i.e. tens, hundreds, etc.)
# Or, turn the integer into an array or a string
# If using an array, can simply call -last- on it to get the last value
# After attempting to use String and array methods to isolate the last
# digit of the integer string, it's clear that I'll have to take the 
# mathematical approach as the string is numbers after 100 are too large
# for the methods to handle.

# Understanding Continued:
# Ater testing the procedural fibonacci method to simply process the 
# large numbers, it's clear that they are just too big to calculate with
# either the procedural or recursive approach.
# Is there another way of processing that will get this done?
#   I tried the tail recursion, and it won't do it either...

def fibonacci(number_in_sequence)
  return 1 if number_in_sequence == 1
  starting_point = 0
  second_number = 1
  number = 0
  counter = 1

  loop do
    break if counter == number_in_sequence
    number = starting_point + second_number
    starting_point = second_number
    second_number = number
    counter += 1 
  end
  number
end

def fibonacci_last(number)
  n = fibonacci(number)
  string_num = n.to_s
  last_digit = string_num.slice(-1).to_i
end

# Examples:

puts fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
puts fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
puts fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
puts fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# puts fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# puts fibonacci_last(123456789) # -> 4
