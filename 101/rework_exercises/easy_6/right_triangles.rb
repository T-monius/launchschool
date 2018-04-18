# right_triangles.rb

# Write a method that takes a positive integer, n, as an argument, and
# displays a right triangle whose sides each have n stars. The
# hypotenuse of the triangle (the diagonal side in the images below)
# should have one end at the lower-left of the triangle, and the other
# end at the upper-right.

# Understanding:
# Input, integer
# Ouptut, rigth triangle
# Same number of spaces as asteriscs outputted
# Number of spaces printed decreases per iteration
# Number of asteriscs printed increses per iteration
# Print spaces
# Print asteriscs

def triangle(int)
  spaces = int - 1
  int.times do |i|
    asteriscs = i + 1
    puts "#{' ' * spaces}#{'*' * asteriscs}"
    spaces -= 1
  end
end

# Examples:

triangle(5)

#     *
#    **
#   ***
#  ****
# *****
triangle(9)

#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********
