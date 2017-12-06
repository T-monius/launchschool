# reversed_array_2_further_ex.rb

# Write a method that takes an Array, and returns a new Array with
# the elements of the original list in reverse order. Do not modify
# the original list.

# You may not use Array#reverse or Array#reverse!, nor may you use
# the method you wrote in the previous exercise.

# Further Exploration

# An even shorter solution is possible by using either inject or
# each_with_object. Just for fun, read about these methods in the
# Enumerable module documentation, and try using one in your reverse
# method.

# Understanding:
# each_with_object takes a collection as an argument
#   Can push to that argument in block represented by second argument
#   First block argument represents the element at that iteration
# How do I iterate backwards?
#   Don't need to.
#   Just prepend each element to the array

def reverse(array)
  array.each_with_object([]) do |element, backwards_array|
    backwards_array.unshift(element)
  end  
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