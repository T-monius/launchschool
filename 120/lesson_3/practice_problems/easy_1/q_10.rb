# q_10.rb

# If we have the class below, what would you need to call to create a
# new instance of this class.

class Bag
  def initialize(color, material)
    @color = color
    @material = material
  end
end

# Answer:
# In order to make a new instance of this class, you'd have to call the
# Object#new method on the class `Bag` passing it in two arguments
# to be assigned to the instance variables `@color` and `@material` by the
# constructor moethod `initialize`.
