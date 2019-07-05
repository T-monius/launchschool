# q_7.rb

# What is used in this class but doesn't add any value?

class Light
  attr_accessor :brightness, :color

  def initialize(brightness, color)
    @brightness = brightness
    @color = color
  end

  def self.information
    return "I want to turn on the light with a brightness level of super high and a color of green"
  end

end

# Answer:
# The method `return` is unnecessary since the class method `information`
# will return the string implicitly.
# Without interpolating the values of @bright and @color into the string
# that is returned by `information` it can be argued that neither of
# thoses instance values or their getter or setter methods are of any
# value unless the class is further modified to implement them.
# Thereby, the `initialize` constructor method would also be spurrious
# without the use of the aforementioned methods and variables.
