# ls_problem2.rb

# Understanding:
# Initially only a `name` getter method
# Task
#   - Create a `name=` setter method
#   - Can take either a full name or a first name only

class Person
  attr_accessor :first_name, :last_name

  def initialize(full_name)
    self.name = full_name
  end

  def name=(name)
    parts = name.split
    @first_name = parts.first
    @last_name = parts.size > 1 ? parts.last : ''
  end

  def name
    "#{first_name} #{last_name}".strip
  end
end

bob = Person.new('Robert')
puts bob.name                  # => 'Robert'
puts bob.first_name            # => 'Robert'
puts bob.last_name             # => ''
bob.last_name = 'Smith'
puts bob.name                  # => 'Robert Smith'

bob.name = "John Adams"
puts bob.first_name            # => 'John'
puts bob.last_name             # => 'Adams'
