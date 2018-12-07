# counting_characters.rb

# Understanding:
# Input
#   - User input
#     + Any number of words >= 1
#     + Validate that a word was entered?
#   - Loop when working with user input
#   - Analyze the input
#     + Count non-space character
#       > Can use String#count
#       > Can loop over the string and count
#       > Can use scan to retrieve non-space character then count
#     + Output count

def valid_input?(str)
  !str.empty?
end

user_input = ''
loop do
  print 'Please write word or multiple words: '
  user_input = gets.chomp
  break if valid_input?(user_input)
  puts 'Please enter something.'
end

def non_space_count(str)
  str.scan(/\S/).count
end

puts "There are #{non_space_count(user_input)} characters in " \
     "\"#{user_input}\"."
