# q_6.rb

# If we have these two methods:

class Computer
  attr_accessor :template

  def create_template
    @template = "template 14231"
  end

  def show_template
    template
  end
end

# and

class Computer
  attr_accessor :template

  def create_template
    self.template = "template 14231"
  end

  def show_template
    self.template
  end
end

# What is the difference in the way the code works?

# Answer:
# The first version does not use the setter method created by the
# attr_accessor in order to set the value of @template, so the it could
# be replaced with an attr_reader.
# The second version implements the setter method created by the
# attr_accessor as well as the getter method. An unnecessary reference
# to self is made in the show_template method as the getter does not
# require a recerence to self to return the value of the instance
# variable while within the class definition. The first version references
# the getter method without the call to self. In fact, the show template
# method could be removed from the class definition if it was decided that
# it's use doesn't add to clarity when exposing the instance method
# outside of the code simply calling the getter method on the calling
# instance object.
