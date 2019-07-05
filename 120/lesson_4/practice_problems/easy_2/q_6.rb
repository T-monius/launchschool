# q_6.rb

# If I have the following class:

class Television
  def self.manufacturer
    # method logic
  end

  def model
    # method logic
  end
end

# Which one of these is a class method (if any) and how do you know? How
# would you call a class method?

# The `self.manufacturer` method is a class method because the method
# definition begins with `self` which refers to the class when not
# inside of the body of a method but within a class definition. There-
# fore, it refers to the class itself when in the header of a method
# definition.
# A class method is called by prefixing the method call with the name of
# the class thereby calling the method on the class itself.
