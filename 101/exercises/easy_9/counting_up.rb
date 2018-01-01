# counting_up.rb

# Write a method that takes an integer argument, and returns an Array of
# all integers, in sequence, between 1 and the argument.

# You may assume that the argument will always be a valid integer that is
# greater than 0.

# Understanding:
# Integer input
# Array output
# Add number to array
# make number itself minus one
# Do this recusively until number == 0

def sequence(num, arr=[])
  return arr if num == 0
  if num > 0
    arr.unshift(num)
    num -= 1
    sequence(num, arr)
  elsif num < 0
    arr << num
    num += 1
    sequence(num, arr)
  end
end

# Examples:

puts sequence(5) == [1, 2, 3, 4, 5]
puts sequence(3) == [1, 2, 3]
puts sequence(1) == [1]

p sequence(-5)
p sequence(-3)
p sequence(-1)
