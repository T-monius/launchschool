# repeat_yourself.rb

# Write a method that takes two arguments, a string and a positive
# integer, and prints the string as many times as the integer
# indicates.

# Understanding:
# Two paramaters
# One a string
# The other an int
# If you multiply a string by an integer with the '*' operator, it'll
# concatenate the string int times
# Not trying to concatenate the string.
# Want three separate 'Hello' strings outputed, or 'Hello\n'* 3 as an
# alternate could work (I guess)

# Algorithm:
# Define method with two parameters
# Call times with int paramater as receiver
# Within times block argument call puts 'Hello'

def repeat(string, int)
  int.times { puts 'Hello' }
end

# Example:

repeat('Hello', 3)

=begin
Output:

Hello
Hello
Hello
=end
