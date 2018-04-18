# squaring_an_argument.rb

# Using the multiply method from the "Multiplying Two Numbers"
# problem, write a method that computes the square of its argument
# (the square is the result of multiplying a number by itself).

def multiply(num, num1)
  num * num1
end

def square(num)
  multiply(num, num)
end

# Example:

puts square(5) == 25
puts square(-8) == 64
