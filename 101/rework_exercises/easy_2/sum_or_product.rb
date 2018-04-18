# sum_or_product.rb

# Write a program that asks the user to enter an integer greater than
# 0, then asks if the user wants to determine the sum or product of
# all numbers between 1 and the entered integer.

def prompt(msg)
  puts "=>#{msg}"
end

def valid_int?(int)
  int.to_s.to_i == int && int > 0
end

def valid_str?(str)
  str == 's' || str == 'p'
end

first_num = 0
prompt('Please enter an integer greater than 0:')
loop do
  first_num = gets.chomp.to_i
  break if valid_int?(first_num)
  puts 'Please enter a valid integer:'
end

operation = ''
prompt("Enter 's' to compute the sum, 'p' to compute the product:")
loop do
  operation = gets.chomp.downcase
  break if valid_str?(operation)
  puts 'Please enter a valid operation:'
end

if operation == 's'
  puts "The sum of the integers between 1 and #{first_num} is" \
       " #{(1..first_num).to_a.sum}."
else
  puts "The product of the integers between 1 and #{first_num} is" \
       " #{(1..first_num).to_a.inject(:*)}."
end
