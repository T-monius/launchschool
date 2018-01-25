# ddaaiillyy_ddoouubbllee_1.rb

# Write a method that takes a string argument and returns a new
# string that contains the value of the original string with all
# consecutive duplicate characters collapsed into a single character.
# You may not use String#squeeze or String#squeeze!.

# Understanding
# String input
# a double is a run of two same chars
# Compare char to preceding or following char.
# String output

# Algorithm
# Set new_string = ''
# Set counter to 0? (if loop)
# Set variable = empty (This will be our preceding char)
# Iterate over string
#   Save current char to variable
#   if current char == to previous char, next
#   else push current char to new_string
# Return new string



puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''
