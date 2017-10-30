# sum_or_product.rb

# Write a program that asks the user to enter an integer greater
# than 0, then asks if the user wants to determine the sum or
# product of all numbers between 1 and the entered integer.

# Understanding:
# Input string
# Output integer
# Either add or multiply input integer recursiveley

# Algorithm: 
# Get and validate input
# If first input valid? Set to variable and call .to_i
# Set second input to string variable
# 2 methods (add, multiply)
# If second string == 'add' call add recursive method
# Elsif second string == 'multiply' call 'multiply' recursive method
# Else output error
# Validate inputs?
# Loop to re-enter second input if not 'add' or 'multiply'?

def valid?(number)
  number.to_i.to_s == number
end

def add_recursion(num)
  if num == 0
    return
  elsif num == 1
    return 1
  else
    num + add_recursion(num - 1)
  end
end

def multiply_recursion(num)
  if num == 0
    return
  elsif num == 1
    return 1
  else
    num * add_recursion(num - 1)
  end
end

def prompt(message)
  puts "=> #{message}"
end

prompt("Welcome to the Sum or Product program!")

integer_input = ''
loop do
  prompt("Please enter a positive number: ")
  integer_input = gets.chomp
  if valid?(integer_input)
    integer_input = integer_input.to_i
    break
  else
    prompt('That is not a valid input number.')
  end
end
operation = ''
loop do
  prompt("Would you like to add or multiply?(1 for add, 2 for multiply)")
  operation = gets.chomp
  if valid?(operation)
    if  operation == '1'
      puts "#{integer_input} added from 1 to itself is #{add_recursion(integer_input.to_i)}"
      break
    elsif  operation == '2'
      puts "#{integer_input} multiplied from 1 to itself is #{multiply_recursion(integer_input.to_i)}"
      break
    else
      prompt('That is not a valid operation.')
    end
  else
    prompt('That is not a valid operation.')
  end
end
