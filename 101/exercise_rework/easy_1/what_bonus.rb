# what_bonus.rb

# Understanding:
# Method
# Input, 2 args
#   - Positive integer
#   - Boolean
#   - when true: half
#   - when false: 0

def calculate_bonus(salary, qualifier)
  case qualifier
  when true then salary / 2
  when false then 0  
  end
end

# Test Cases:
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
