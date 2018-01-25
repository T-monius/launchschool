# tip_calculator.rb

# Create a simple tip calculator. The program should prompt for a bill
# amount and a tip rate. The program must compute the tip and then
# display both the tip and the total amount of the bill.

def prompt(msg)
  puts "=>#{msg}"
end

def valid_int?(num)
  num.to_s.to_i == num
end

bill = 0
loop do
  prompt("What is the bill?")
  bill = gets.chomp.to_i

  break if valid_int?(bill)
end

tip = 0
loop do
  prompt("What is the tip percentage?")
  tip = gets.chomp.to_f

  break if valid_int?(tip)
end

puts "The tip is $#{(tip / 100) * bill}"
puts "The total is #{((tip / 100) * bill) + bill}"

# Example:

# What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.0
# The total is $230.0
