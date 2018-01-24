# reverse0.rb

# Reverse It (Part 1)
# Write a method that takes one argument, a string, and returns the
# same string with the words in reverse order.

# Understanding:
# Input: string
# Output: string
# Could use String#reverse
# Without reverse method
#   rely on index natur or strings
#   iterate over string backwards and push elements to a new string

# MISREAD AND REVERSED ALL OF THE LETTERS AND NOT THE WORDS!
def reverse0(str)
  reverse_string = ''
  counter = 1

  loop do
    break if counter > str.size
    reverse_string << str[-counter]
    counter += 1
  end
  reverse_string
end

# Examples:

puts reverse0('')
puts reverse0('Hello World')
puts reverse0('Reverse these words')
