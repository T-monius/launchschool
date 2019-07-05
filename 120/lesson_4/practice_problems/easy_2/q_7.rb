# q_7.rb

# If we have a class such as the one below:

class Cat
  @@cats_count = 0

  def initialize(type)
    @type = type
    @age  = 0
    @@cats_count += 1
  end

  def self.cats_count
    @@cats_count
  end
end

# Explain what the @@cats_count variable does and how it works. What
# code would you need to write to test your theory?

# Answer:
# In the preceding code, the @@cats_variable stores the total number of
# cats instantiated from the class (i.e. how many instances of Cat are/
# were out there). Every time a new instance of Cat is instantiated, the
# initialize method increments the @@cats_count class variable by one.
# Calling Cat.cats_count would tell you the number of Cat instances. One
# could call the class method, instantiate a new Cat, and call it again
# in order to see.
