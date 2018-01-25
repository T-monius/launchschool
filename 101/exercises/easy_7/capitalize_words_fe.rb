# capitalize_words_fe.rb

# Further Exploration

# Ruby conveniently provides the String#capitalize method to
# capitalize strings. Without that method, how would you solve this
# problem? Try to come up with at least two solutions.

# Understanding:
# ASCII chars are separated from each other at a set interval
#   Can that be used to convert?
# Can use a hash with capitals of lowercase characters

def word_cap(str)
  uppercase_hash = { 'a' => 'A', 'b' => 'B', 'c' => 'C', 'd' => 'D', 
                     'e' => 'E', 'f' => 'F', 'g' => 'G', 'h' => 'H',
                     'i' => 'I', 'j' => 'J', 'k' => 'K', 'l' => 'L',
                     'm' => 'M', 'n' => 'N', 'o' => 'O', 'p' => 'P',
                     'q' => 'Q', 'r' => 'R', 's' => 'S', 't' => 'T',
                     'u' => 'U', 'v' => 'V', 'w' => 'W', 'x' => 'X',
                     'y' => 'Y', 'z' => 'Z' }

  capitalized = str.split.map do |word|
    prefix = uppercase_hash[word[0]] if uppercase_hash.has_key?(word)
    prefix + word[1..-1]
  end
  capitalized.join(' ')
end

word_cap('four score and seven')# == 'Four Score And Seven'
word_cap('the javaScript language')# == 'The Javascript Language'
word_cap('this is a "quoted" word')# == 'This Is A "quoted" Word'
