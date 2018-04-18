# odd_lists.rb

# Write a method that returns an Array that contains every other
# element of an Array that is passed in as an argument. The values in
# the returned list should be those values that are in the 1st, 3rd,
# 5th, and so on elements of the argument Array.

# Understanding:
# Need to perform some operation on every other iteration
# Can iterate with a loop or an interative method
# Array#times uses a built in index, but I'd have to call it according
# to the size of the array.
# Can use each_with_index but would have to push to an external array
# Can use each_with_object but would have to use an external counter
# Can add Enumerator#with_index or Enumerator#with_object to a method

def oddities(arr)
  i = 0
  arr.each_with_object([]) do |el, a|
    a << el if i.even?
    i += 1 
  end

end

# Examples:

p oddities([2, 3, 4, 5, 6])  == [2, 4, 6]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
