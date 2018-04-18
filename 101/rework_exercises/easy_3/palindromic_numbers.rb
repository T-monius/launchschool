# palindromic_numbers.rb

# Write a method that returns true if its integer argument is
# palindromic, false otherwise. A palindromic number reads the same
# forwards and backwards.

# Understanding:
# Input:
#   Integer
#   Can't iterate over an integer calling slice method (i.e. [])
# Data types:
#   Array or string of converted integer
#   Integer#digits

def palindrome?(input)
  input == input.reverse
end

def palindromic_number?(number)
  arr = number.digits
  palindrome?(arr)
end

# Examples:

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true
