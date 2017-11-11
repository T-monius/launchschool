# multiples_3_5.rb

# Write a method that searches for all multiples of 3 or 5 that lie
# between 1 and some other number, and then computes the sum of those
# multiples. For instance, if the supplied number is 20, the result
# should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than
# 1.

# Understanding:
# Input integer
# Output integer
# Multiples of a number are divided with no remainder into that number
# Add multiples of 3 to array
#   Find modulus of that number and three
#   subtract that from number
#   This produces the greatest number divisible by 3
#   Subtract 3 from that number down and push to array
#   Continue subtracting 3 and adding to array until down to 1
# Add multiples of 5
#   Repeat process with multiples of 5
# Combine two arrays
# May sort array for aesthetic purposes
# Add all values of array and return.

# Algorithm:
# Method with three parameters
#   1st is limit number
#   2nd is number whose multiples will be determined
#   3rd is the array of multiples to be added to at recursive calls
# Set variable to limit - (limit % divisor)
# Push multiple to array
# Subtract divisor from multiple and push result to array
# Repeat until result <= 1
# 
# Second method
# Set variable to call of multiples method with input as limit for 3
# Set variable1 for second multiples call with 5
# Set variable2 to first array + second array
# Call sum on variable2 which contains all multiples of 3 and 5

def multiples_up_to(limit, divisor, multiples_to_limit=[])
  if limit < 1
    return multiples_to_limit
  end
  multiple = limit - (limit % divisor)
  multiples_to_limit << multiple
  multiple -= divisor
  multiples_up_to(multiple, divisor, multiples_to_limit) 
end

def multisum(num)
  multiples_three = multiples_up_to(num, 3)
  multiples_five  = multiples_up_to(num, 5)
  all_multiples_to_num = multiples_three + multiples_five
  all_multiples_to_num.uniq.inject(:+)
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
