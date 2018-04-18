# problem_3.rb

# Now create a smart name= method that can take just a first name or a
# full name, and knows how to set the first_name and last_name
# appropriately.

# Understanding:
# Asssuming no @name instance variable exists until I create the name=
# method.
# Can parse string for ' ' to determine whether to set just first name
# or full name.

class Person
  attr_accessor :first_name, :last_name

  def initialize(full_name)
    @first_name, @last_name = full_name.split
  end

  def name
    return @first_name + ' ' + @last_name if @last_name != nil
    @first_name
  end

  def name=(input_name)
    if input_name.scan(' ') == []
      @first_name = input_name
    else
      @first_name, @last_name = input_name.split
    end
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

# LS Solution

# class Person
#   attr_accessor :first_name, :last_name

#   def initialize(full_name)
#     parts = full_name.split
#     @first_name = parts.first
#     @last_name = parts.size > 1 ? parts.last : ''
#   end

#   def name
#     "#{first_name} #{last_name}".strip
#   end

#   def name=(full_name)
#     parts = full_name.split
#     self.first_name = parts.first
#     self.last_name = parts.size > 1 ? parts.last : ''
#   end
# end
