# swap.rb

# Debugging:
# When I run the swap method, I get nils pushed into the array.
# The nils affect the ability to assess when the counter should stop
# the iteration.
# Using the swap method on an array outside of a variable doesn't seem
# to have the same affect.
# When calling swap as defined in irb with integer parameters and an array
# that is not a variable but an array literal, the return value is the
# expected swapped array elements in the original input array.
# The difficulty here of this problem is performing the swap on the
# input array distructively which has two implications: the bubble_sort!
# method and the swap methods that I've created must both be destructive.
# I don't understand how there are multiple nils pushed to the array in
# 'swap' when I'm not swapping elements iteratively.
# I believe the problem has to do with mutating a collection while
# 'iterating' over it although I'm not technically iterating. I am
# performing multiple operations on the array and specifically with
# the same object of a collection. The confusion is derived however from
# the problem only presenting itself when working with an array variable
# and not an array literal.

require 'pry'

def swap(idx, idx1, arr)
  swap_holder = arr.delete_at(idx1)
  arr.insert(idx, swap_holder)
end

array = [5, 3]
swap(array[0], array[1], array)
puts array == [3, 5]
