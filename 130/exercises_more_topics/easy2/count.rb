# count.rb

# Understanding:
# - `Enumerable#count` iterates over a collection and returns
#   an integer value representing how many returned truthy
#   when yielded to the block
# - Input
#   > Arbitrary list
#     + Splat operator
#   > Block
#   > Yield some number of elements or none to a block
# - Output
#   > Integer

# Approach
# - Transform the method parameters to an iterable collection
#   > *(splat)
#   > Convert method argument to a collection type (i.e. Array)
#   > Upon testing, conversion is not needed
# - Set an incrementable variable to 0
# - Iterate over the collection
#   > Yield element at iteration to block
#   > Increment return variable if block return value it truthy
# - Return incremented value (or unincremented, haha)

def count(*input)
  count = 0
  input.each { |ele| count += 1 if yield(ele) }
  count
end

p count(1, 3, 6) { |value| value.odd? } == 2
p count(1, 3, 6) { |value| value.even? } == 1
p count(1, 3, 6) { |value| value > 6 } == 0
p count(1, 3, 6) { |value| true } == 3
p count() { |value| true } == 0
p count(1, 3, 6) { |value| value - 6 } == 3
