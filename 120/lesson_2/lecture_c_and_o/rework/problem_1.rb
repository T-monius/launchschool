# problem_1.rb

# Understanding:
# - bob object has name getter and setter methods
# - bob object has a constrctor method that initializes @name

class Person
  attr_accessor :name

  def initialize(name)
    self.name = name
  end
end

bob = Person.new('bob')
puts bob.name                  # => 'bob'
bob.name = 'Robert'
puts bob.name                  # => 'Robert'
