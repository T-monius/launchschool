# searching_101.rb

# Understanding:
# Output,
#   - Output a prompt to the standard output
# Input,
#   - User input
#   - Strings
#   - Inputs represent five numbers
#     + Integers
#     + Posititve
#     + These don't have to be the case, but the tests intimate that
#   - Analyze the sixth input to see if occurs among the first
#     five
# Output
#   - Sixth number and array of five interpolated into a string
#   - String reveals whether 6th matched criteria

# Process
#   - Initialize an array
#   - Write a method to test for valid numbers
#   - Write method to output appropriate string interpolation
#     + Number in array?
#     + Print one string or the other
#   - Loop 
#     + Prompt the user for number
#     + Validate?
#     + Push valid numbers to an array
#     + Stop looping if the array has 6 inputs
#   - Pop last input
#     + Set to new variable
#   - Call interpolator

def prompt(msg)
  puts "==> #{msg}"
end

def valid?(n)
  !!(n.to_i.to_s == n)
end

def six_recurrant(array, num)
  if array.include?(num)
    puts "The number #{num} appears in #{array}."
  else
    puts "The number #{num} does not appear in #{array}"
  end
end

numbers_in = []
cardinals = ['1st', '2nd', '3rd', '4th', '5th', 'last']
counter = 0
loop do
  break if numbers_in.size >= 6
  prompt("Enter the #{cardinals[counter]} number:")
  num = gets.chomp
  numbers_in << num.to_i if valid?(num)
  counter += 1
end

sixth = numbers_in.pop
six_recurrant(numbers_in, sixth)
