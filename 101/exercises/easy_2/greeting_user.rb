# greeting_user.rb

# Write a program that will ask for user's name. The program will
# then greet the user. If the user writes "name!" then the computer
# yells back to the user.

# Understanding:
# Prompt user for name
# Get user input
# Analyze user input for trailing exclamation character
# Greet with name interpolated into string if no exclamation
# Else greet in bold with name inerpolated in string if exlamation
# Can use index[-1] == '!' || .include?('!')
# String validation?
# Always output capitalized name?

# Data Structures:
# String Input
# String Output

# Algorithm:
# Start
# Prompt user for name
# Set variable 'name' to .gets.chomp
# If name.include?('!') puts bold
# Else puts greeting

print 'Please tell me your name: '
name = gets.chomp

if name.include?('!')
  name.chop!
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
