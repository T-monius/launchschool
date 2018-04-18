# palindromic_strings_2.rb

# Write another method that returns true if the string passed as an
# argument is a palindrome, false otherwise. This time, however, your
# method should be case-insensitive, and it should ignore all
# non-alphanumeric characters. If you wish, you may simplify things by
# calling the palindrome? method you wrote in the previous exercise.

# Understanding:
# A real palindrome: case doesn't matter.
# Excise non-alphanumeric characters
#   Iterate through the string and push to a new string every charater
#   that is alphabetic
#   String#delete to remove destructively any non-alpha characters
#     ^A-z

def palindrome?(input)
  input == input.reverse
end

def real_palindrome?(str)
  str = str.downcase
  char_only_string = ''
  counter = 0

  loop do
    break if counter == str.size

    char_only_string << str[counter] if ('a'..'z').include?(str[counter])
    counter += 1
  end
  palindrome?(char_only_string)
end

# Examples:

puts real_palindrome?('madam')# == true
puts real_palindrome?('Madam')#  == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false
