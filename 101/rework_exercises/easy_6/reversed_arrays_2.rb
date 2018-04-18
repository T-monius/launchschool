# reversed_arrays_2.rb

# Write a method that takes an Array, and returns a new Array with the
# elements of the original list in reverse order. Do not modify the
# original list.

# You may not use Array#reverse or Array#reverse!, nor may you use the
# method you wrote in the previous exercise.

def reverse(arr)
  return_array = []
  counter = arr.length - 1
  loop do
    break if counter < 0
    return_array << arr[counter]
    counter -= 1
  end
  return_array
end

# Examples:

puts reverse([1,2,3,4]) == [4,3,2,1]          # => true
puts reverse(%w(a b c d e)) == %w(e d c b a)  # => true
puts reverse(['abc']) == ['abc']              # => true
puts reverse([]) == []                        # => true

p list = [1, 2, 3]                      # => [1, 2, 3]
p new_list = reverse(list)              # => [3, 2, 1]
puts list.object_id != new_list.object_id  # => true
puts list == [1, 2, 3]                     # => true
puts new_list == [3, 2, 1]                 # => true
