# greeting_user.rb

# Write a program that will ask for user's name. The program will
# then greet the user. If the user writes "name!" then the computer
# yells back to the user.

# Understanding:
# Input, user inpft string
# Output, interpolated string

puts "What's your name?"
name = gets.chomp

if name.end_with?('!')
  puts "HELLO #{name.upcase}"
else
  puts "Hello #{name}."
end
