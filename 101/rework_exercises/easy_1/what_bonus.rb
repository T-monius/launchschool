# what_bonus.rb

# Write a method that takes two arguments, a positive integer and a
# boolean, and calculates the bonus for a given salary. If the boolean
# is true, the bonus should be half rvm of the salary. If the boolean is
# false, the bonus should be 0.

# Understanding:
# 

def calculate_bonus(salary, bonus_bool)
  bonus_bool ? salary / 2 : 0
end

# Examples:

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
# The tests above should print true.
