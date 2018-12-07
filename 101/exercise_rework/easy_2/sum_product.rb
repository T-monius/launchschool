# sum_product.rb

# Understanding:
# Input,
#   - String
#   - Represents integer > 0
#     + Should I verify this?
#   - String
#     + Signifies operation
#     + sum or product
#     + All numbers between 1 and the input number
# Output,
#   - Calculation of operation performed interpolated into a string

def prompt(msg)
  puts ">> #{msg}"
end

def valid?(num)
  !!(num.to_i.to_s == num)
end

def appropriate?(op)
  !!(op == 's' || op == 'p')
end

def retrieve(sym)
  if sym == 's'
    :+
  else
    :*
  end
end

num = ''
loop do
  prompt('Please enter an integer greater than 0:')
  num = gets.chomp
  break if valid?(num)
end
num = num.to_i

operation = ''
loop do
  prompt("Enter 's' to compute the sum, 'p' to compute the product:")
  operation = gets.chomp
  break if appropriate?(operation)
end
operation = retrieve(operation)

calculation = (1..num).to_a.reduce(operation)

puts "The sum of the integers between 1 and #{num} is #{calculation}."
