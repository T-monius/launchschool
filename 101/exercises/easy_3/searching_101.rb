# searching_101.rb

# Write a program that solicits 6 numbers from the user, then prints
# a message that describes whether or not the 6th number appears
# amongst the first 5 numbers.

# Understanding:
# Input number strings
# Output string with interpolated variables.

# Data structures:
# Strings
# Array with integer values
# Integers

# Algorithm:
# Get number
# Validate
# Push to array
# repeat 6 times
# Set 6th input to variable
# Call include? on variable and array
# If yes puts 'The number 'var' appears in 'array''
# Else puts 'The number 'var' does not appear in 'array''

def valid?(num)
  num.to_i.to_s == num
end

def prompt(message)
  puts "==> #{message}"
end

array = []
number = ''
until array.length == 6
  if array.length == 0
    prompt('Enter the 1st number: ')
    number = gets.chomp
    if valid?(number)
      array << number
    else
      prompt('Must enter a valid number.')
    end
  elsif array.length == 1
    prompt('Enter the 2nd number: ')
      number = gets.chomp
    if valid?(number)
      array << number
    else
      prompt('Must enter a valid number.')
    end
  elsif array.length == 2
    prompt('Enter the 3rd number: ')
      number = gets.chomp
    if valid?(number)
      array << number
    else
      prompt('Must enter a valid number.')
    end
  elsif array.length == 3
    prompt('Enter the 4th number: ')
        number = gets.chomp
    if valid?(number)
      array << number
    else
      prompt('Must enter a valid number.')
    end
  elsif array.length == 4
    prompt('Enter the 5th number: ')
      number = gets.chomp
    if valid?(number)
      array << number
    else
      prompt('Must enter a valid number.')
    end
  elsif array.length == 5
    prompt('Enter the 6th number: ')
      number = gets.chomp
    if valid?(number)
      array << number
    else
      prompt('Must enter a valid number.')
    end
  else
    break
  end
end

array.pop

if array.include?(number)
  puts "The number #{number} appears in #{array}."
else
  puts "The number #{number} does not appear in #{array}."
end
