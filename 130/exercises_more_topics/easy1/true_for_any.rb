# true_for_any.rb

# Understanding:
#   - Pass each element of a collection to a block
#   - If block returns `true`, `any?` returns `true` 
#   - Stops iterating when at first true return
# Input
#   - Array
#   - Block
#     + Explicit block
# Output
#   - `true` or `false`

# Approach
# 

def any?(arr, &block)
  counter = 0
  while counter < arr.size
    return true if block.call(arr[counter])
    counter += 1
  end
  false
end

p any?([1, 3, 5, 6]) { |value| value.even? } == true
p any?([1, 3, 5, 7]) { |value| value.even? } == false
p any?([2, 4, 6, 8]) { |value| value.odd? } == false
p any?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
p any?([1, 3, 5, 7]) { |value| true } == true
p any?([1, 3, 5, 7]) { |value| false } == false
p any?([]) { |value| true } == false
