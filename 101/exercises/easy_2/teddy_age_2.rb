# teddy_age.rb

# Build a program that randomly generates and prints Teddy's age. To
# get the age, you should generate a random number between 20 and 
# 200.

# Understanding:
# No input
# Output string 

# Data Structures:
# Use int for random number
# String output with interpolated int

# Algorithm:
# Start
# Method returns rand(200)
# Set variable age to method call
# If method return value < 20 call method again 
# Else output interpolated string with age variable

# Further Exploration:
# Modify this program to ask for a name, and then print the age for
# that person. For an extra challenge, use "Teddy" as the name if no
# name is entered.

# Understanding:
# To implement upgrades first update method to take an arg
# The input will be a string entered by the user. 
# If no string is entered, then the output will be 'Teddy'
# Default value of 'name' arg will be Teddy
# Set random number 20..200 to variable
# Return String interpolated with name and variable 

def age_teddy name='Teddy'
  age = rand(20..200)
  puts "#{name} is #{age} years old!"
end

def prompt message
  puts ("=> #{message}")
end

prompt('Welcome to the age finding program!')
loop do
  prompt('Please enter your name: (or just enter for Teddy\'s age)')
  user_name = gets.chomp

  if user_name == ''
    age_teddy
  else
    age_teddy(user_name)
  end
  prompt('Go again? (y/n)')
  again = gets.chomp
  break unless again.downcase.start_with?('y')
end

