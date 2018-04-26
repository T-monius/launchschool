# what_output_fe.rb

# Further Exploration:
# What would happen in this case? This code "works" because of that
# mysterious to_s call in Pet#initialize. However, that doesn't explain
# why this code produces the result it does. Can you?

class Pet
  attr_reader :name

  def initialize(name)
    @name = name.to_s
  end

  def to_s
    "My name is #{@name}."#.upcase 
  end
end

name = 42
puts name
fluffy = Pet.new(name)
name += 1
puts fluffy.name
puts fluffy
puts fluffy.name
puts name

# Explanation:
# The call to `to_s` in the constructor method of `Pet` is a call to
# `Integer#to_s` when the integer `42` is the argument.
# The `Integer#to_s` instance method is not a destructive method as it
# does not mutate the caller. Therefore, the original variable `name`
# is unmodified when the `name` argument in the `initialize` instance
# method is used as the caller for `to_s`. The return value of the call
# to `to_s` is stored as the `@name` instance variable thereby creating
# a new space in memory.
# If the to_s call was removed as well as the string re-assignment on
# line 22, then the object_id of the `fluffy.name` variable and the
# local variable `name` would be the same.
# However, the local variable name is re-assigned to a new space in
# memory line 22 as well. Thus, there are two points in the program
# where the variables by the same name desist from referring to the
# original space in memory.
