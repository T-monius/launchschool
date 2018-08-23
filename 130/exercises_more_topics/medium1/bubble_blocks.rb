# bubble_blocks.rb

# Understanding:
# Bubble Sort
#   - Inefticient sorting technique
#   - Iterate
#     + Swap two consecutive items if the one to the
#     + Left is bigger than the one to the right
#     + Iterate perpetually until no swaps are made.
# Input
#   - Array
# Output
#   - Sorted Array
# Task
#   - Modify the method to take a block
#     + Block determines whether a swap takes place
#     + Whether line 5 is truthy determines whether 
#       or not a swap takes place
#       > Simpley render the arguments to the block
#       > Return value of the block determines order

# Approach:
#

def bubble_sort!(array)
  loop do
    swapped = false
    1.upto(array.size - 1) do |index|
      next if block_given? && yield(array[index - 1], array[index])
      next if !block_given? && array[index - 1] <= array[index]
      array[index - 1], array[index] = array[index], array[index - 1]
      swapped = true
    end
    
    break unless swapped
  end
  nil
end

array = [5, 3]
bubble_sort!(array)
array == [3, 5]

p array = [5, 3, 7]
bubble_sort!(array) { |first, second| first >= second }
p array #== [7, 5, 3]
puts '----------------------------'
array = [6, 2, 7, 1, 4]
bubble_sort!(array)
array == [1, 2, 4, 6, 7]

p array = [6, 12, 27, 22, 14]
bubble_sort!(array) { |first, second| (first % 7) <= (second % 7) }
p array #== [14, 22, 12, 6, 27]
puts '----------------------------'
array = %w(sue Pete alice Tyler rachel Kim bonnie)
bubble_sort!(array)
array == %w(Kim Pete Tyler alice bonnie rachel sue)

p array = %w(sue Pete alice Tyler rachel Kim bonnie)
bubble_sort!(array) { |first, second| first.downcase <= second.downcase }
p array #== %w(alice bonnie Kim Pete rachel sue Tyler)
