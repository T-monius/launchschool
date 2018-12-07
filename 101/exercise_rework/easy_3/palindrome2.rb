# palindrome2.rb

#Understanding:
# Palindrome is the same forwards and backwards
# Input
#   - String
# Task
#   - Determine if the input is a 'real palindrome'
#   - Case insensitive
#   - Alpha-numeric only
#   - Can use previous method
# Output,
#   - boolean

# Approach:
#   - Strip string of non-alpha/numeric characters
#   - downcase
#   - Call palindome?

def palindrome?(str)
  str == str.reverse
end

def real_palindrome?(str)
  stripped_string = str.downcase.scan(/a-z0-9/)
  palindrome?(stripped_string)
end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false
