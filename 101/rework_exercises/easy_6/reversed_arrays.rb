# reversed_arrays.rb

# Write a method that takes an Array as an argument, and reverses its
# elements in place; that is, mutate the Array passed into this
# method. The return value should be the same Array object.

# You may not use Array#reverse or Array#reverse!.

# Understanding:
# Input, array
#   Perform transformation on input array mutating it
#   If the first method used on the input array is destructive as well
#   as the subsequent, the input array itself will be operated on.
#   Take first element and make the last and last first
# Output, same array as input

# Algorithm:
# Set starting index counter
# Set ending index counter
# Iterate
#   Break criteria
#   perform swap
#   iterate counters

def reverse!(arr)
  l_index = 0
  r_index = -1

  loop do
    break if l_index >= (arr.length/2)
    arr[l_index], arr[r_index] = arr[r_index], arr[l_index]
    l_index += 1
    r_index -= 1
  end
  arr
end

# Examples:

list = [1,2,3,4]
p result = reverse!(list) # => [4,3,2,1]
puts list == [4, 3, 2, 1]
puts list.object_id == result.object_id

list = %w(a b c d e)
p reverse!(list) # => ["e", "d", "c", "b", "a"]
puts list == ["e", "d", "c", "b", "a"]

list = ['abc']
p reverse!(list) # => ["abc"]
puts list == ["abc"]

list = []
p reverse!(list) # => []
puts list == []
