# medium2_q2.rb

# The result of the following statement will be an error:
# puts "the value of 40 + 2 is " + (40 + 2)

# Why is this and what are two possible ways to fix this?

# Understanding:
# The error is due to erroneous concatenation of a string and integer
# Add to_s to the end of expression (40 + 2)
puts "the value of 40 + 2 is " + (40 + 2).to_s

# Or, use string interpolation 
puts "the value of 40 + 2 is #{40 + 2}"
