# what_output.rb

# In the following code, what output does this code print? Fix this
# class so that there are no surprises waiting in store for the
# unsuspecting developer.

# Understanding:
# The `to_s` method of the `Pet` class mutates the instance variable
# `@name` of the `Pet` class
# Since the local variable `name` in the original code is passed into
# the constructor when the local variable 'fluffy'is initialized, the
# local variable `name` is mutated.

class Pet
  attr_reader :name

  def initialize(name)
    @name = name.to_s
  end

  def to_s
    "My name is #{@name.upcase}."
  end
end

name = 'Fluffy'
fluffy = Pet.new(name)
puts fluffy.name
puts fluffy
puts fluffy.name
puts name
