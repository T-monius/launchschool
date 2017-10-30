# tip_calculator.rb

# Create a simple tip calculator. The program should prompt for a
# bill amount and a tip rate. The program must compute the tip and
# then display both the tip and the total amount of the bill.

# Understanding: 
# Inputs 2 strings
# Output 2 Strings with interpolated floats
# Validate Numbers?

# Pseudo Code:
# Get input.to_f/Set = variable 'bill'
# Get input.to_f/Set = variable 'percentage'
# Set variable 'tip' = percentage of bill/ 100
# Set 'total' = 'tip' + 'bill'

puts "Hello User!"
puts "Please, input the dollar amount of your bill: "
bill = gets.chomp.to_f

puts "Please, input the percent of that bill you'd like to tip: "
percentage = gets.chomp.to_f / 100

tip = bill * percentage

total = bill + tip

puts "The tip is $#{format('%0.2f', tip)}."
puts "The total is $#{format('%0.2f', total)}."
