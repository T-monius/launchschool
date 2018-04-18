# delete_vowels.rb

# Write a method that takes an array of strings, and returns an array
# of the same string values, except with the vowels (a, e, i, o, u)
# removed.

# Understanding:
# Input, array
# Task
#   Remove vowels
#   Iterate over array
#   Perform transformation
# Output, array
#   No vowels

def remove_vowels(array)
  array.map { |str| str.gsub(/[aeiou]/i, '') }
end

# Example:

puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
