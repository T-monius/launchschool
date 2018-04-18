# when_retire.rb

# Build a program that displays when the user will retire and how many
# years she has to work till retirement.

def prompt(msg)
  puts "=>#{msg}"
end

prompt('What is your age?')
age = gets.chomp.to_i

prompt('At what age would you like to retire?')
retirement_age = gets.chomp.to_i

years_till_retirement = retirement_age - age
this_year = Time.now.year
retirement_year = this_year + years_till_retirement
final_output = "It's #{this_year}. You will retire in #{retirement_year}\n" \
               "You have only #{years_till_retirement} years of work to go!"

prompt(final_output)
# Example:

=begin
What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!
=end
