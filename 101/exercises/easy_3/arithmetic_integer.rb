# arithmetic_integer.rb

# Write a program that prompts the user for two positive integers,
# and then prints the results of the following operations on those
# two numbers: addition, subtraction, product, quotient, remainder,
# and power. Do not worry about validating the input.

# Understanding:
# Inputs strings
# Convert input to_i or to_f
# Interpolate result of inputs and operation

# Algorithm:
# Get input
# Set inputs to variables
# Puts variables interpolated w/ given operations converted to_i/f

puts "==> Hello"
puts "==> Please give me a positive number: "
first_num = gets.chomp
puts "==> Please give me a second positive number: "
second_num = gets.chomp

puts "==> #{first_num} + #{second_num} = #{first_num.to_i + second_num.to_i}"
puts "==> #{first_num} - #{second_num} = #{first_num.to_i - second_num.to_i}"
puts "==> #{first_num} * #{second_num} = #{first_num.to_i * second_num.to_i}"
puts "==> #{first_num} / #{second_num} = #{first_num.to_f / second_num.to_f}"
puts "==> #{first_num} ** #{second_num} = #{first_num.to_i ** second_num.to_i}"
puts "==> #{first_num} % #{second_num} = #{first_num.to_i % second_num.to_i}"
