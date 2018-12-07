# arithmetic_integer.rb

# Understanding:
# Input
#   - User input
#     + strings
#     + 2
# Output
#   - 6 calculations on separate lines
#     + Each line is the same except for the operation and return
#     + Can use same output string
#   - Can use `send` or `inject`

# Approach
#   - Write a prompt method
#   - Set an array to cardinals
#     + Loop over the array and prompt user for inputs
#     + Store user inputs in an array
#   - Set array of operations
#   - Loop over operations
#     + Output return value of operation interpolated w/ inputs

OPERATIONS = [:+, :-, :*, :/ , :%, :**]
cardinals = ['first', 'second']
inputs = []
counter = 0

def prompt(msg)
  puts "==> #{msg}"
end

def valid?(num)
  !!(num.to_i.to_s == num)
end

loop do
  break if counter >= cardinals.size
  prompt("Enter the #{cardinals[counter]} number:")
  input = gets.chomp
  inputs << input.to_i if valid?(input)
  counter += 1
end

OPERATIONS.each do |operation|
  if operation == :/ || operation == :% && inputs[1] == 0
    puts 'Can\'t divide by 0!'
  else
    prompt("#{inputs[0]} #{operation} #{inputs[1]} = " \
           "#{inputs.reduce(operation)}")
  end
end
