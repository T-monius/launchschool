# select_method.rb

# Understanding:
# Method
#   - Input
#     + Array
#     + Block argument
#     + Yields elements to input block iteratively
# Task
#   - Push to a new array if block return value is truthy
# Output
#   - Returns a new array

# Approach:
# Set a new array to []
# Set a counter
# Loop over the input array
#   - Yield element at iteration to the block
#   - Store block return in a variable
#   - Evaluate return value for truthiness
#     > Push element at iteration to new array if block return
#       is truthy
#   - Increment counter
# Return the new array

def select(arr)
  selection = []
  counter = 0

  while counter < arr.size
    block_return = yield(arr[counter])
    selection << arr[counter] if !!block_return
    counter += 1
  end

  selection
end

array = [1, 2, 3, 4, 5]

p select(array) { |num| num.odd? }      # => [1, 3, 5]
p select(array) { |num| puts num }      # => [], because "puts num" returns nil and evaluates to false
p select(array) { |num| num + 1 }       # => [1, 2, 3, 4, 5], because "num + 1" evaluates to true
