# counting_characters.rb

# Write a program that will ask a user for an input of a word or
# multiple words and give back the number of characters. Spaces
# should not be counted as a character.

# Understanding:
# Input string
# Output string with character count interpolated

# Algorithm:
# Get string
# Set array to .split on user input
# Set count variable
# .each array
# if char not ' ' count
# Puts count variabe interpolated into string

puts "Please enter something, and I'll tell you the character count: "
initial_input = gets.chomp
character_array = initial_input.split('')
count = 0

character_array.each do |character|
  if character != ' '
    count += 1
  end
end

puts "There are #{count} characters in \"#{initial_input}\"."
