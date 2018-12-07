# tip_calculator.rb

# Understanding:
# Input, two strings
#   - Bill amount
#   - Tip rate
#   - Compute tip
# Output
#   - String with interpolated calculations

print 'What is the bill? '
bill = gets.chomp.to_i

print 'What is the tip percentage? '
percentage = gets.chomp.to_f

tip = (bill * (percentage/100)).round(2)
total = bill + tip

puts "The tip is #{tip}"
puts "The total is #{total}"

# Further Exploration
# Our solution prints the results as $30.0 and $230.0 instead of
# the more usual $30.00 and $230.00. Modify your solution so it
# always prints the results with 2 decimal places.

# Understanding:
# Format the output string
#   - 2 places after the decimal
#   - % and printf
#   - Manual string manipulation also a possibility

puts "The tip is %.02f" % tip
puts "The total is %.02f" % total

