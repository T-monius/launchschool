# even_numbers.rb

# Print the even numbers from 1 to 99, inclusive. All numbers should
# be printed on separate lines.

# Understanding:
# No input
# Output integers

# Algorithm:
# Set array to select on range 1 to 100
# puts array

even_numbers = (1..100).select {|n| n.even?}

puts even_numbers
