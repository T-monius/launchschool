# problem_2.rb

# Modify the class definition from above to facilitate the following
# methods. Note that there is no name= setter method now.

# Hint: let first_name and last_name be "states" and create an
# instance method called name that uses those states.

# Understanding:
# No setter method _name=_
# Getter method for @name
# @first_name initialized at object creation with parameter for _new_
# Method _name_ assigned value by instance method that uses @first_name
# @last_name 

class Person
  attr_accessor :first_name, :last_name

  def initialize(given_name, surname='')
    self.first_name = given_name
    self.last_name = surname
  end

  def name
    @first_name + ' ' + @last_name
  end
end

bob = Person.new('Robert')
puts bob.name                  # => 'Robert'
puts bob.first_name            # => 'Robert'
puts bob.last_name             # => ''
bob.last_name = 'Smith'
puts bob.name                  # => 'Robert Smith'
