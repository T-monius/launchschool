# How_big_room.rb

# Build a program that asks a user for the length and width of a 
# room in meters and then displays the area of the room in both 
# square meters and square feet.

# Note: 1 square meter == 10.7639 square feet

# Do not worry about validating the input at this time.

# Understanding:
# Input string
  # Float, likely partial meters inputted
  # meters assumed
# Two inputs
# Multiply first input (l) by second (w) = sq_m
# Output one string with sq_m and converted to sq_ft inperpolated

def prompt message
  puts ("=> #{message}")
end

prompt("Hello user! Please input the length of the room (meters) : ")
length = gets.chomp.to_f
prompt("Please input the width of the room (also meters): ")
width = gets.chomp.to_f

square_meters = length * width

square_feet = (square_meters * 10.7639).round(2)

prompt("The area of the room is #{square_meters} square meters (#{square_feet} square feet.)")
