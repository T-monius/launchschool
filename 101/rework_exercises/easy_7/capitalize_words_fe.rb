# capitalize_words_fe.rb

# Further Exploration:
# Write a method that takes a single String argument and returns a new
# string that contains the original value of the argument with the
# first character of every word capitalized and all other letters
# lowercase.

# You may assume that words are any sequence of non-blank characters.

# Ruby conveniently provides the String#capitalize method to capitalize
# strings. Without that method, how would you solve this problem? Try
# to come up with at least two solutions.

# Understanding:
# Capitalize each word in sentence
# Iterate over the string itself
#   Upcase a letter if the previous letter is a ' '
#     Upcase w method String#upcase
#     Upcase w/o method String#upcase by calling an associated letter
#     from associative array or hash
#     Convert a character by its ascii value

def word_cap(str)
  idx = 0
  previous_char = ''
  loop do
    break if idx == str.length

    str[idx] = str[idx].upcase if idx == 0 || str[idx - 1] == ' '
    idx += 1
  end
  str
end

# This one has some buggy tendencies
# def word_cap(str)
#   idx = 0
#   previous_char = ''
#   loop do
#     break if idx == str.length

#     str[idx] = (str[idx].ord - 32).chr if idx == 0 || str[idx - 1] == ' '
#     idx += 1
#   end
#   str
# end

# Examples

puts word_cap('four score and seven')# == 'Four Score And Seven'
puts word_cap('the javaScript language')# == 'The Javascript Language'
puts word_cap('this is a "quoted" word')# == 'This Is A "quoted" Word'
