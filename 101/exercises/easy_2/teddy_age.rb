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

age = rand(200)
