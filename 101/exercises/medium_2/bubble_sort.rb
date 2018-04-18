# bubble_sort.rb

# Write a method that takes an Array as an argument, and sorts that
# Array using the bubble sort algorithm as just described. Note that
# your sort will be "in-place"; that is, you will mutate the Array
# passed as an argument. You may assume that the Array contains at
# least 2 elements.

# Understanding:
# Iterate over entire array
# Compare two elements at a time
#   Swap if out of order
#   Indicate that a swap occured
# Repeat iteration if a swap occured

# Algorithm:
# Loop
#   Set boolean variable to false
#   counter = 0
#   Loop
#     break if counter == arr.size
#     if arr[counter] > arr[counter + 1]
#     swap(arr[counter], arr[counter + 1], arr) # Create a swap method?
#     boolean variable = true
#     counter += 1
#   break if boolean variable == false
# Return array

require 'pry'

def swap(idx, idx1, arr)
  swap_holder = arr.delete_at(idx1)
  arr.insert(idx, swap_holder)
end

def bubble_sort!(arr)
  loop do
    swapped = false
    counter = 0
    loop do
      break if counter == arr.size - 1
      # binding.pry
      if arr[counter] > arr[counter + 1]
        swap(counter, counter + 1, arr)
        swapped = true
      end
      counter += 1
    end
    break if swapped == false
  end
  arr
end

# Examples

array = [5, 3]
bubble_sort!(array)
puts array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
puts array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
puts array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
