# multiply_all_pairs.rb

# Write a method that takes two Array arguments in which each Array
# contains a list of numbers, and returns a new Array that contains the
# product of every pair of numbers that can be formed between the elements
# of the two Arrays. The results should be sorted by increasing value.

# You may assume that neither argument is an empty Array.

# Understanding:
# The instructions say to include the product of every pair that can be
# formed between the numbers between the two arrays, but it means really
# exclusively between the numbers paired against the numbers in the other
# array. This is an important distinction because it excludes pairs that
# can be formed between integers paired against other elements in the same
# array which would be much more exhaustive.
# -Therefore, the task is to take each individual integer from a given array
# and see how many pairs can be formed between it and all the other integers
# of the foreign array. 
# -These pairs will then be multipled and stored in
# another array. 
# -The new array with products will be sorted in ascending order.
# Can try brute force or use Array#product or Array#zip methods

# Algotithm:
# Brute force
#   use 2 counters to iterate over arrays
#   ##set variable equal to arr1.clone if doing it destructively
#   Set new array variable to []
#   loop
#     break if counter == arr.size
#     if counter1 == arr1.size
#       counter += 1
#       counter1 = 0
#     Push arr[counter] * arr1[counter1] to new array 
#     increase counter1
#   Return new array.sort

def multiply_all_pairs(arr, arr1)
  counter = 0
  counter1 = 0
  array_of_products = []

  loop do
    if counter1 == arr1.size
      counter += 1
      counter1 = 0
    end
    break if counter == arr.size

    array_of_products << (arr[counter] * arr1[counter1])
    counter1 += 1
  end
  array_of_products.sort
end

def multiply_all_pairs1(arr, arr1)
  arr.product(arr1).map {|a| a.reduce(:*)}.sort
end

# Examples:

puts multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
puts multiply_all_pairs1([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
