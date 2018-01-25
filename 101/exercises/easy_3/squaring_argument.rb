# squaring_argument.rb

# Using the multiply 'method' from the "Multiplying Two Numbers" 
# problem, write a method that computes the square of its argument.

# Further Exploration

# What if we wanted generalize this method to a "power to the n"
# type method: cubed, to the 4th power, to the 5th, etc. How would
# we go about doing so while still using the multiply method?

# Understanding:
# Number to the x is number * itself * result...
# 

def multiply(first, second)
  first * second
end

def square(number)
  multiply(number, number)
end

def power(number, number1, nth = number1)
  if nth == 1
    return number1
  end
  nth -= 1
  power(number, multiply(number, number1), nth)  
end

puts square(5)
puts square(10)
puts power(5, 5)
puts power(6, 3)
