# drop_while.rb

# Understanding:
# - Iterating method
#   + Exclude collection members from return while truthy
#   + As soon as falsey
#     > Return first falsey element
#     > Return rest of the collection as well
# Input
#   + Array
# Task
#   + Iterate
#   + Yield value to block
#     > Block return value determines next operation
#   + If block falsey, push point at which falsey to end to return
# Output
#   + Array
#     > Collection size or smaller
#   + Return empty array if all elements truthy
#   + Return empty array if input is empty

# Approach
# - Set return array to empty array
# - Set index to iterate from 0
# - Loop
#   > Break if past last index of original array
#   > Return from falsey element to end of array if block falsey
# - Return empty array if stopped iterating

def drop_while(arr)
  idx = 0

  loop do
    break if idx >= arr.size

    return arr[idx..-1] unless yield(arr[idx])
    idx += 1
  end
  []
end

p drop_while([1, 3, 5, 6]) { |value| value.odd? } == [6]
p drop_while([1, 3, 5, 6]) { |value| value.even? } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| true } == []
p drop_while([1, 3, 5, 6]) { |value| false } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| value < 5 } == [5, 6]
p drop_while([]) { |value| true } == []
