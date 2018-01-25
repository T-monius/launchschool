# Write a method that takes two arguments, a string and a positive
# integer, and prints the string as many times as the integer
# indicates.

# Understanding:
# Input is given
# Method should have two parameters w/ local variables
# use 'puts' to print string argument which is assumed to be the
# first argument n.times

def repeat (string, integer)
  integer.times{puts string}
end

repeat('Hello', 3)
repeat('Bye', 3)