# combining_arrays_fe.rb

# Write a method that takes two Arrays as arguments, and returns an
# Array that contains all of the values from the argument Arrays.
# There should be no duplication of values in the returned Array, even
# if there are duplicates in the original Arrays.

# Further Exploration:
# What if we didn't have #|? There are certainly a few other ways to go
# about solving this exercise.

# Understanding:
# Input, two arrays
#   Elements all integers
#   In example, all in ascending order
# Output, one array
#   Derived from elements of two input arrays
#   No duplicate elements
# Return new array.
# Order pertinent?
# Iterate over both arrays simultaneously
# Push element at that index into new array if not already there

# Algorithm:
# Set counter
# Set new array
# Iterate
#   Break if counter greater then both array sizes
#   Push element of either array to new array if not already there

def merge(arr, arr1)
  combined_array = []
  counter = 0

  loop do
    break if counter >= arr.size && counter >= arr1.size

    el_arr = arr.fetch(counter, 'outta')
    el_arr1 = arr1.fetch(counter, 'outta')
    combined_array << el_arr if combined_array.none? { |el| el == el_arr }&&
                                     el_arr != 'outta'

    combined_array << el_arr1 if combined_array.none? { |el| el == el_arr1 }&&
                                     el_arr != 'outta'
    counter += 1
  end
  combined_array
end

# Example
p merge([1, 3, 5], [3, 6, 9])# == [1, 3, 5, 6, 9]
