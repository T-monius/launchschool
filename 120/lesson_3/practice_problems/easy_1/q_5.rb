# q_5.rb

# Which of these two classes has an instance variable and how do you
# know?

class Fruit
  def initialize(name)
    name = name
  end
end

class Pizza
  def initialize(name)
    @name = name
  end
end

# The class `Pizza` has an instance method which is indicated by the `@`
# preceding the variable name.

# If we don't have access to the class definition, we can create a new
# instance of the class and call Object#instance_variables on it.
