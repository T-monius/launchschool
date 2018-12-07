# palindrome.rb

# Understanding:
# Palindrome Reads the same forwards and backwards
# Input
#   - String
# Task
#   - Evaluate whether the input is a palindrome
#   - Spaces and case matter
# Output
#   - boolean

# Approach:
# Compare whether input is equal to the reversed self

def palindrome?(str)
  str == str.reverse
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true
p palindrome?([1, 3, 1]) == true
p palindrome?([1, 2, 3]) == false
