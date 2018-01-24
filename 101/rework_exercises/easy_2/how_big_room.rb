# how_big_room.rb

# Build a program that asks a user for the length and width of a 
# room in meters and then displays the area of the room in both 
# square meters and square feet.

# Note: 1 square meter == 10.7639 square feet
# Do not worry about validating the input at this time.

puts "What's the width of the room?"
width = gets.chomp.to_i
puts "What's the length of the room?"
length = gets.chomp.to_i
square_meters = width * length
feet_squared = square_meters * 10.7639

puts "The area of the room in square meters is #{square_meters}."
puts "The area of the room in square feet is #{feet_squared}"
