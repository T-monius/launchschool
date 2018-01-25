# diamonds.rb

# Write a method that displays a 4-pointed diamond in an n x n grid,
# where n is an odd integer that is supplied as an argument to the
# method. You may assume that the argument will always be an odd
# integer.

# Understanding:
# Line zero:
#   n/2 spaces on left
#   asterisk
#   n/2 spaces to the left
# Middle line:
#   n asterisks
# Every other line before middle:
#   0 + line-idx *s
#   n/2 - line-idx spaces
# Lines after middle:
#   Can't think of a mathematical solution
#   Will put together a looping construct that increases spaces by one
#   at each iteration
#   Decreases asterisks by one at each iteration

# Algorithm:
# Set spaces equal to ' '
# Set asterisks = '*'
# Set half_int = odd_int/2
# Make method to print first half with upto method
# Call 0.upto(odd_int)
#   Equation for first half
#   for each iteration spaces = (half_int - i)
#   asterisks = (i*2) + 1
#   print spaces
#   print asterisks
#   puts spaces
# Call second half method
#   Asterisks = odd_int - 2
#   Spaces = 1
#   Print spaces
#   Print asterisks
#   Print spaces
#   Decrease asterisks by 2
#   Increase spaces by 1

def first_half(half_int)
  0.upto(half_int) do |i|
    spaces = (half_int - i)
    asterisks = (i * 2) + 1
    print "#{' ' * spaces}"
    print "#{'*' * asterisks}"
    puts "#{' ' * spaces}"
  end
end

def second_half(odd_int)
  asterisks = odd_int - 2
  spaces = 1
  loop do
    break if asterisks < 1

    print "#{' ' * spaces}"
    print "#{'*' * asterisks}"
    puts "#{' ' * spaces}"
    asterisks -= 2
    spaces += 1
    end
end

def diamond(odd_int)
  half_int = odd_int/2
  first_half(half_int)
  second_half(odd_int)
end

# Examples

diamond(1)

#*
diamond(3)

# *
#***
# *
diamond(9)
=begin
    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *
=end
