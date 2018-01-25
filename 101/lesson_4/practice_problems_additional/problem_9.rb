# problem_9.rb

# As we have seen previously we can use some built-in string methods
# to change the case of a string. A notably missing method is
# something provided in Rails, but not in Ruby itself...titleize. This
# method in Ruby on Rails creates a string that has each word
# capitalized as it would be in a title. For example, the string:

words = "the flintstones rock"
# would be:
# words = "The Flintstones Rock"
# Write your own version of the rails titleize implementation.

# Understanding: 
# Can iterate over manually and capitalize word[0]
# First letter of every word capital
# New word identified by a space or first word of sentence

# Algorithms:
# Capitalize words[0]
# Iterate over every char and if char ' ', that index + 1 upcase
# Or, split, then capitalize each word

puts words = words.split.map {|word| word.capitalize}.join(' ')
