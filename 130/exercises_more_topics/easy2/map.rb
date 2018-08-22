# map.rb

# Understanding:
# - Input
#   > Collection
#   > `Enumerable#map` works with any class that implements an
#     `each` method.
# - Output
#   > New Array with the return value of each block
#     iteration as new elements of the array.

# Approach:
# - Set new array to empty
# - Iterate with a method common to `Enumberable` class types
#   > Yield element at iteration to the block
#   > Push block return value to the new array
# - Return new array

def map(collection)
  collection.each_with_object([]) do |ele, arr|
    arr << yield(ele)
  end
end

p map([1, 3, 6]) { |value| value**2 } == [1, 9, 36]
p map([]) { |value| true } == []
p map(['a', 'b', 'c', 'd']) { |value| false } == [false, false, false, false]
p map(['a', 'b', 'c', 'd']) { |value| value.upcase } == ['A', 'B', 'C', 'D']
p map([1, 3, 4]) { |value| (1..value).to_a } == [[1], [1, 2, 3], [1, 2, 3, 4]]
p map({a:'a', b:'b', c:'c'}) { |_, v| v.upcase }
