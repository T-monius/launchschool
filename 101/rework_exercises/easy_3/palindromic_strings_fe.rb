# palindromic_strings_fe.rb

# Further Exploration

# Write a method that determines whether an array is palindromic; that
# is, the element values appear in the same sequence both forwards and
# backwards in the array. Now write a method that determines whether
# an array or a string is palindromic; that is, write a method that
# can take either an array or a string argument, and determines
# whether that argument is a palindrome. You may not use an if,
# unless, or case statement or modifier.

def palindromic_array?(input)
  input == input.reverse
end

puts palindromic_array?('madam') == true
puts palindromic_array?('Madam') == false          # (case matters)
puts palindromic_array?("madam i'm adam") == false # (all characters matter)
puts palindromic_array?('356653') == true

puts palindromic_array?([1, 2, 1]) == true
puts palindromic_array?([1, 1, 2, 1]) == false
