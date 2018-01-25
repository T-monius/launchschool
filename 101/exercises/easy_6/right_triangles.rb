# right_triangles.rb

# Write a method that takes a positive integer, n, as an argument,
# and displays a right triangle whose sides each have n stars. The
# hypotenuse of the triangle (the diagonal side in the images below)
# should have one end at the lower-left of the triangle, and the
# other end at the upper-right.


def triangle(num)
  num.times do |i| 
    print ' ' * ((num - i)-1)
    print '*' * (i + 1)
    puts
  end
end

# Examples:

triangle(5)
=begin
    *
   **
  ***
 ****
*****
=end
triangle(9)
=begin
        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********
=end
