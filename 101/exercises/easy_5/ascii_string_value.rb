# ascii_string_value.rb

# Write a method that determines and returns the ASCII string value
# of a string that is passed in as an argument. The ASCII string
# value is the sum of the ASCII values of every character in the
# string. (You may use String#ord to determine the ASCII value of a
# character.)

# Understanding:
# Input is a string
# Each character in string has a different ascii value
# Must divide string into chars
# Determine value for each char
# Add value of each all chars

# Data Structures
# String
# Array of string chars
# Integer value

# Algorithm:
# Could build a hash with chars given ascii values
# Or, add ascii value of each array element to a running total during
# iteration

def ascii_value(string)
  total = 0
  string.chars.each do |char|
    total += char.ord
  end
  total
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0
