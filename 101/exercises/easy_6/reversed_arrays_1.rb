# reversed_arrays_1.rb

# Write a method that takes an Array as an argument, and reverses its
# elements in place; that is, mutate the Array passed into this
# method. The return value should be the same Array object.

# You may not use Array#reverse or Array#reverse!.

# Understanding:
# Make a method that is mutating
# The mutation reverses the order of the elements
# Either duplicate the original array for reference
# Or, save each value before it is manipulated
#   The stored value could be used after the half of array swapped
#   If counter >= array.length/2
#     use stored values in reverse order from storage
# Duplicate array easier
#   Element to use at each iteration is - counter if counter initiated
#   at one
#   Or, - counter - 1 if started at zero
#   Or, even easier! .pop last elemtent from duplicate array
# Break if duplicate array.length == 0 at top

def backwards!(array)
  duplicate = array.clone
  counter = 0
  loop do
    break if duplicate.empty? # counter == array.length

    array[counter]= duplicate.pop
    counter += 1
  end
  array
end

list = [1,2,3,4]
result = backwards!(list) # => [4,3,2,1]
puts list == [4, 3, 2, 1]
puts list.object_id == result.object_id

list = %w(a b c d e)
p backwards!(list) # => ["e", "d", "c", "b", "a"]
puts list == ["e", "d", "c", "b", "a"]

list = ['abc']
puts backwards!(list) # => ["abc"]
puts list == ["abc"]

list = []
puts backwards!(list) # => []
puts list == []
