# tri_angles.rb

# A triangle is classified as follows:

# right: One angle of the triangle is a right angle (90 degrees)
# acute: All 3 angles of the triangle are less than 90 degrees
# obtuse: One angle is greater than 90 degrees.
# To be a valid triangle, the sum of the angles must be exactly 180
# degrees, and all angles must be greater than 0: if either of these
# conditions is not satisfied, the triangle is invalid.

# Write a method that takes the 3 angles of a triangle as arguments,
# and returns a symbol :right, :acute, :obtuse, or :invalid depending
# on whether the triangle is a right, acute, obtuse, or invalid
# triangle.

# You may assume integer valued angles so you don't have to worry about
# floating point errors. You may also assume that the arguments are
# specified in degrees.

# Understanding:
# Integer input
# Inputs represent degrees in a triangle
#   Should total 180
#   No angle less than 0
#   Can use a case statement like the LS solution in the previous exercise
#   Or, can use various method calls

# Algorithm:
# Set degrees to an array
# Define case statement
# when any 0 degree :invalid, don't add up to 180
# when any?(90) :right
# when max less than 90 :acute
# when max > than 90 :obtuse

def triangle(degree, degree1, degree2)
  angles = [degree, degree1, degree2]

  case
  when angles.any? { |angle| angle == 0 }, angles.reduce(:+) != 180
    :invalid
  when angles.any? { |angle| angle == 90 }
    :right
  when angles.max < 90
    :acute
  when angles.max > 90
    :obtuse
  end 
end

# Examples:

puts triangle(60, 70, 50) == :acute
puts triangle(30, 90, 60) == :right
puts triangle(120, 50, 10) == :obtuse
puts triangle(0, 90, 90) == :invalid
puts triangle(50, 50, 50) == :invalid
