# ddaaiillyy_ddoouubbllee.rb

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

def crunch(string)
  counter = 0
  new_string = string[0]
  return new_string if string.length <= 1
  return string if string == ''
  loop do
    counter += 1
    new_string << string[counter] if string[counter - 1] != string[counter]

    break if counter == (string.length - 1)
  end
  new_string
end

# Examples:

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''
