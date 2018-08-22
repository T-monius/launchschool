# divisors.rb

# Understanding:
# Method
# Significant return value
#   - List = array
#   - Divisors
# Input
#   - Positive Integer
# Output
#   - Array
#     - Integer elements
#     - Every divisor of the input integer

# Approach
#   - Iterate from 1 up to the number
#     > If the number at iteration is a divisor, add to array
#   - Return array

def divisors(num)
  1.upto(num).with_object([]) do |divisor, arr|
    arr << divisor if num % divisor == 0
  end
end

p divisors(1) == [1]
p divisors(7) == [1, 7]
p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(98) == [1, 2, 7, 14, 49, 98]
p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute
