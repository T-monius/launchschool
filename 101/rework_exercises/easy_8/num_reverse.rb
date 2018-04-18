# num_revere.rb

# Write a method that takes a positive integer as an
# argument and returns that number with its digits
# reversed. Examples:

# Understanding:
# Input, 
#   positive integer
#   Reverse the Digits
#   Integers are not 0 indexed collections
#   Can manipulate the integer mathematically by orders of ten as each
#   digit from right to left is a power of ten greater than the one to
#   the right.
#   Or, can convert to a string or array of digits.
# Output,
#   Positive integer

# Algorithm (math solution)
# Iterate
#   Add modulus 10 of the input number to the reverse number
#   Divide input number by 10 and assign to a variable
#   Stop iterating if input after division is 0

def reversed_number(int, reverse_int= 0)
  reverse_int += int % 10
  int /= 10
  return reverse_int if int == 0
  reversed_number(int, reverse_int * 10)
end

puts reversed_number(12345) == 54321
puts reversed_number(12213) == 31221
puts reversed_number(456) == 654
puts reversed_number(12000) == 21 # Note that zeros get dropped!
puts reversed_number(1) == 1
