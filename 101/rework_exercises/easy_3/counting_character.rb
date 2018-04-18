# counting_character.rb

# Write a program that will ask a user for an input of a word or
# multiple words and give back the number of characters. Spaces should
# not be counted as a character.

=begin
input:

Please write word or multiple words: walk
output:

There are 4 characters in "walk".
input:

Please write word or multiple words: walk, don't run
output:

There are 13 characters in "walk, don't run".
=end

# Understanding:
# The input string can be parsed for spaces by calling split on it
# Then, each word can be evaluated for characters.
# Or, String#count can count everything except ^' '

puts 'Please write a word or multiple words: '
input = gets.chomp
puts "There are #{input.count('^ ')} characters in " \
     "#{input}"
