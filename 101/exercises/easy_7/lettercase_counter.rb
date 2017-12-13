# lettercase_counter.rb

# Write a method that takes a string, and then returns a hash that
# contains 3 entries: one represents the number of characters in the
# string that are lowercase letters, one the number of characters
# that are uppercase letters, and one the number of characters that
# are neither.

# Understanding:
# Input string
# Ouput Hash
# Hash keys are symbols
#   Should hash be created with those symbols in it?
# Can use String#scan to identify different character types.
# Array#count will tell me how many of each of the characters returned
# 

def letter_case_count(str)
  case_hash = { lowercase: 0, uppercase: 0, neither: 0 }

  case_hash[:lowercase] = str.scan(/[a-z]/).count
  case_hash[:uppercase] = str.scan(/[A-Z]/).count
  case_hash[:neither] = str.scan(/[^A-z]/).count
  case_hash
end

# Examples

puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }