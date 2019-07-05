# problem2.rb

# Understanding:
# - There is a @name instance variable
# - There are @first_name and @last_name instance variables
# - The constructor method assigns values to all three.
#   + Split the input
#   + If there is only one name in the array returned by split,
#     @last_name is an empty string.

class Person
  def initialize(name)
    @name = name.split
    @last_name = @name[1]
  end

  def name
    @name.join(' ')
  end

  def last_name
    return ' ' if name[1] == nil
    @name[1]
  end

  def last_name=(surname)
    name[1] = surname
  end

  def first_name
    @name[0]
  end
end

bob = Person.new('Robert')
puts bob.name                  # => 'Robert'
puts bob.first_name            # => 'Robert'
puts bob.last_name             # => ''
bob.last_name = 'Smith'
puts bob.name  
