# greeting_user.rb

# Understanding:
# Input
#   - User input: String
#   - Name
# Output
#   - Variable interpolated
#     + Optional ending based on input criteria
#     + Ternary Conditional Operator? Only 2 possible outputs
#       > Must have to use the TCO in some kind of a looping
#         construct and not just floating in the air.

print 'What is your name? '
name = gets.chomp

query = 'WHY ARE WE SCREAMING?'

if name.end_with?('!')
  puts "HELLO #{name.upcase} #{query}"
else
  puts "Hello #{name}."
end
