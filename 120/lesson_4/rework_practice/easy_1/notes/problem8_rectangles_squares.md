## Rectangles and Squares

### Understanding
- A square and a rectangle are very similar
  + Difference being, all sides of a square are the same
  + Width and height are the same

### Task
- Given the following class:

```ruby
class Rectangle
  def initialize(height, width)
    @height = height
    @width = width
  end

  def area
    @height * @width
  end
end
```

Write a class called Square that inherits from Rectangle, and is used like this:

```ruby
square = Square.new(5)
puts "area of square = #{square.area}"
```

### Implementation
- Override the parent class constructor to take one argument instead of two
- Alternatively, call `super` in a new `Square` class constructor and duplicate the argument passed to it as both arguments for the parent constructor
