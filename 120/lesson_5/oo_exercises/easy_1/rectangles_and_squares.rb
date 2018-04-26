# rectangles_and_squares.rb

# Understanding:
# The difference between a square and a rectangle is that the height
# and width of a square are the same.
# The initialize of Rectangle can be used in square by just feeding it
# the square argument twice.

# Given the following class:

class Rectangle
  def initialize(height, width)
    @height = height
    @width = width
  end

  def area
    @height * @width
  end
end

class Square < Rectangle
  def initialize(length)
    super(length, length)
  end
end

# Write a class called Square that inherits from Rectangle, and is used
# like this:

square = Square.new(5)
puts "area of square = #{square.area}"
