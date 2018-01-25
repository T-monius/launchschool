# double_char_2.rb

# Write a method that takes a string, and returns a new string in which
# every consonant character is doubled. Vowels (a,e,i,o,u), digits,
# punctuation, and whitespace should not be doubled.

def double_consonants(str)
  str.chars.each_with_object('') do |char, new_str|
    if char =~ /[^aeiou]/ && char =~ /[A-z]/
      new_str << char * 2
    else
      new_str << char
    end
  end
end

# Examples:

puts double_consonants('String') == "SSttrrinngg"
puts double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
puts double_consonants("July 4th") == "JJullyy 4tthh"
puts double_consonants('') == ""
