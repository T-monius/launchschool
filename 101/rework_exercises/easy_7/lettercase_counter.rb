# lettercase_counter.rb

# Write a method that takes a string, and then returns a hash that
# contains 3 entries: one represents the number of characters in the
# string that are lowercase letters, one the number of characters that
# are uppercase letters, and one the number of characters that are
# neither.

# Understanding:
# Input, string
# Output, hash
#   Number of lowecase letters in string
#   Number of uppercase letters in string
#   Number of non upper- nor lower-case letters
# Can do iteratively
#   Compare each character to a regex
#   Write a constant with the lowercase and uppercase letters
#   String#each_char
#   String#split & Array#each
#   loop w/ index counter for string
# String#count
#   Create a hash with the given keys initialized at 0
#     :lowecase, :uppercase, :neither
#   Create a hash with default 0
#     Push key and value dynamically to the string

# Algorithm:
# Initialize hash with default 0
# Assign hash key for lowercase with return value of count for lowercases
#   Repeat for uppercase and neither

def letter_case_count(str)
  case_hash = Hash.new(0)
  case_hash[:lowercase] = str.count('a-z')
  case_hash[:uppercase] = str.count('A-Z')
  case_hash[:neither] = str.count('^A-Za-z')
  case_hash
end

# Examples

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
