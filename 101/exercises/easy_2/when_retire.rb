# Build a program that displays when the user will retire and how
# many years she has to work till retirement.

# Understanding:
# 2 Inputs string
# 1 Output string with interpolated values
# Must know current year (use time class)
# Subtract years to work input from retirment age input
# Add years input to current year to get retirement year

# Data Structures:
# Integers
# Strings

# Algorithm: 
# Get current age & Set to variable
# Get retirement age & Set to variable
# Set year variable to year instance from time class
# Set variable for 'years_left' to retirement age - age
# Output year + years_left for retirement year
# Output years_left

puts 'Please enter your current age: '
age = gets.chomp.to_i

puts 'Please enter the age at which you\'d like to retire: '
retirement_age = gets.chomp.to_i

this_year = Time.new.year

years_left = retirement_age - age

puts "It's #{this_year}. You'll retire in #{this_year + years_left}."
puts "You only have #{years_left} years of work to go!"
