# when_retire.rb

# Understanding
# Input, string * 2
#   - Represents age
#   - Represents retirement age
#   - Convert inputs to integers
#   - Calculate: retirement year, working years
# Output
#   - Retirement year interpolated
#   - Years till retirment interpolated

print 'What is your age? '
age = gets.chomp.to_i

print 'At what age would you like to retire? '
retirement_age = gets.chomp.to_i

this_year = Time.new.year
working_years = retirement_age - age
retirment_year = this_year + working_years

puts "It's #{this_year}. You will retire in #{retirment_year}."
puts "You have only #{working_years} years of work to go!"
