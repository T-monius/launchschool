# problem_1.rb

# Given the below usage of the Person class, code the class definition.

# Understanding:
# A class definition begins with the keyword class followed by the name
# in CamelCase
# The _new_ method takes a parameter, so the constructor method _initialize_
# should take a parameter.
# Getter and setter methods are instantiated for the instance variable
# @name.

class Person
  attr_accessor :name

  def initialize(given_name)
    self.name = given_name
  end
end

bob = Person.new('bob')
puts bob.name                  # => 'bob'
bob.name = 'Robert'
puts bob.name                  # => 'Robert'
