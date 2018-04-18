# diamonds.rb

# Write a method that displays a 4-pointed diamond in an n x n grid,
# where n is an odd integer that is supplied as an argument to the
# method. You may assume that the argument will always be an odd integer.

# Understanding:
# Input, integer
#   Always odd
#   Single asterisc printed for input of 1
#   Each space printed should either be a space or an asterisc
#   A diamond is the union of two triangles
#   Could print a triangle, then print the inverted version of it
#   From index 0 to the middle index, the number of asteriscs printed on
#   each line grows.
#   From middle index to ending index, the number of asteriscs printed
#   decreases.
#   One approach, print number of asteriscs in a string of given length
#   with spaces filling the gap.
#     String#center
#   2nd approach, print spaces, then asteriscs, then spaces
#   3rd approach, print spaces, then asteriscs
# Output, diamond printed to the std_output
#   Return a string which when putsed prints a diamond to the std_output
#   Or, return an unimportant value and have a diamond printed as a side-
#   effect.

# Algorithm (2nd Approach):
# Determine the middle index
#   n/2, integer division
# Set variable to number of spaces to print
#   Starts at middle index number
# Set variable to number of asteriscs to print
#   Starts at 1
# Set counter to 1
# Iterate and print number of spaces then asteriscs
#   Increment asteriscs by two if less than middle index
#   Decrement spaces by one if less than middle index
#   Increment counter by 1
#   Decrement asteriscs by two if greater than middle index
#   Increment spaces by 1 if greater than middle index
# Break if counter equal to n

def diamond(n)
  middler = n/2
  spaces = middler
  asteriscs = 1
  counter = 0

  loop do
    break if counter == n
    print ' ' * spaces
    print '*' * asteriscs
    print "\n"
    asteriscs += 2 if counter < middler
    spaces -= 1 if counter < middler
    asteriscs -= 2 if counter >= middler
    spaces += 1 if counter >= middler
    counter += 1
  end
end

# Examples

puts diamond(1)

# *
puts diamond(3)

#  *
# ***
#  *
puts  diamond(9)

#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *
