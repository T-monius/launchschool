# q_5.rb

# If I have the following class:

class Television
  def self.manufacturer
    # method logic
  end

  def model
    # method logic
  end
end

# What would happen if I called the methods like shown below?

tv = Television.new
tv.manufacturer
# Answer:
# This is a class method so cannot be called on the instance of `Television`
# `tv` and would through an error.

tv.model
# Answer:
# The method logic would be executed.

Television.manufacturer
# Answer:
# The method logic would be executed.

Television.model
# Answer:
# This isn instance method and cannot be called on the class `Television`
# itself, so an error would be raised.
