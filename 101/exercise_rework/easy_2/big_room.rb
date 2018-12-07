# big_room.rb

# Undestanding:
# Input, two strings
#   - Represent metric dimensions
#   - width and length
#   - Calculate square
#   - Convert to feet
# Output, string with square feet and meter dimensions interpolated

puts 'Enter the length of the room in meters:'
length_m = gets.chomp.to_i

puts 'Enter the width of the room in meters:'
width_m = gets.chomp.to_i

square_m = length_m * width_m
square_ft = (square_m * 10.7639).round(2)

puts "The area of the room is #{square_m} square meters" \
     "(#{square_ft} square feet)."
