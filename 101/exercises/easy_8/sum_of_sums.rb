# sum_of_sums.rb

# Write a method that takes an Array of numbers and then returns the sum of
# the sums of each leading subsequence for that Array. You may assume that
# the Array always contains at least one number.

# Understanding
# Remove an increasing number of elements from the arr
# Add the value of the removed items to the running total of previous
# iterations

# Algorithm:
# Set counter variable
# Set total variable
# Loop
#   sum n values taken from the array and add to total variable

def sum_of_sums(arr)
  counter = 1
  total = 0

  loop do
    break if counter > arr.size

    total += arr.take(counter).sum
    counter += 1
  end
  total
end

def sum_of_sums1(arr)
  total = 0
  (arr.size).times {|i| total += arr.take(i+1).sum}
  total
end

# Examples:

puts sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
puts sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
puts sum_of_sums([4]) == 4
puts sum_of_sums([1, 2, 3, 4, 5]) == 35

puts sum_of_sums1([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
puts sum_of_sums1([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
puts sum_of_sums1([4]) == 4
puts sum_of_sums1([1, 2, 3, 4, 5]) == 35
