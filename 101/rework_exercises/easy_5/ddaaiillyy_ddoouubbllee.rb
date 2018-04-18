# ddaaiillyy_ddoouubbllee.rb

# Write a method that takes a string argument and returns a new string
# that contains the value of the original string with all consecutive
# duplicate characters collapsed into a single character. You may not
# use String#squeeze or String#squeeze!.

# Understanding:
# Mutating method?
# Input, string
# Task
#   Remove consecutive duplicate characters
#   Set string variabl to first character in str
#   Counter = 1
#   Iterate over string
#   Push character to knew string if previous character not same
#   current character variable? or, simply call str[counter - 1]
# Output, string

def crunch(str)
  return str if str.empty?
  no_doubles = str[0]
  counter = 1

  loop do
    break if counter == str.length

    no_doubles << str[counter] if str[counter - 1] != str[counter]
    counter += 1 
  end
  no_doubles
end

# Examples:

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''
