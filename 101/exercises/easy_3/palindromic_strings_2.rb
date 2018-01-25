# palindromic_strings_2.rb

# Write another method that returns true if the string passed as an
# argument is a palindrome, false otherwise. This time, however, your
# method should be case-insensitive, and it should ignore all 
# non-alphanumeric characters. If you wish, you may simplify things
# by calling the palindrome? method you wrote in the previous
# exercise.

# Understanding:
# Need to remove capitalization to compare
# Ignore non-alphanumeric characters

# Algorithm:
# Call downcase on strings
# Compare each element of string to range 'a'..'z' or '0'..'9'
# If not in range remove

def palindrome?(string)
  string.downcase!
  array = string.split('')
  array_1 = []
  array.each do |element| 
    if ('a'..'z').include?(element) || (0..9).include?(element)
      array_1.push(element)
    end
  end
  array_1 == array_1.reverse
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == true           # (case does not matter)
puts palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts palindrome?('356653') == true
puts palindrome?('356a653') == true
puts palindrome?('123ab321') == false