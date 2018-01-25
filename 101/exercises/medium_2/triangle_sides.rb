# triangle_sides.rb

# A triangle is classified as follows:

# equilateral: All 3 sides are of equal length
# isosceles: 2 sides are of equal length, while the 3rd is different
# scalene: All 3 sides are of different length
# To be a valid triangle, the sum of the lengths of the two shortest
# sides must be greater than the length of the longest side, and all
# sides must have lengths greater than 0: if either of these conditions
# is not satisfied, the triangle is invalid.

# Write a method that takes the lenggths of the 3 sides of a triangle
# as arguments, and returns a symbol :equilateral, :isosceles,
# :scalene, or :invalid depending on whether the triangle is
# equilateral, isosceles, scalene, or invalid.

# Understanding:
# Input, three integers
# Output, symbol
# 4 criteria
# Method for each triangle type?
#   Return invalid if all three type methods are false
# 

# Understanding:
# Equilateral
#   All sides are equal
# Isoceles
#   

# Algorithm:
# Set arguments to an array
# Return false if any?(0)
# not_valid?
#   Method takes array
#   Sort array smallest to largest
#   array[0] + array[1] < array[2] then false
# Equilateral:
#   Method takes array
#   return true or false if all?(int)
# Isoceles
#   Method takes 3 parameters
#   return true if [int1, int2].any?(int) || [int,int2].any?(int1)
# Scalene
#   If no other operations returned, then it's scalene

def not_valid?(arr)
  arr.sort!
  return true if arr[0] + arr[1] <= arr[2] || arr.any? { |num| num == 0 }
end

def equilateral?(arr)
  arr.all? { |num| num == arr[0] }
end

def isoceles?(int, int1, int2)
  return true if [int1, int2].any? { |num| num == int } ||
                 [int, int2].any? { |num| num == int1 }
end

def triangle(int, int1, int2)
  sides_array = [int, int1, int2]
  return :invalid if not_valid?(sides_array)
  return :equilateraĺ if equilateral?(sides_array)
  return :isosceles if isoceles?(int, int1, int2)
  return :scalene
end

# Examples:

puts triangle(3, 3, 3)# == :equilateral
puts triangle(3, 3, 1.5) == :isosceles
puts triangle(3, 4, 5) == :scalene
puts triangle(0, 3, 3) == :invalid
puts triangle(3, 1, 1) == :invalid
