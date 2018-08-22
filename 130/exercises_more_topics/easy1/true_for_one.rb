# true_for_one.rb

# Understanding:
# Input
#   - Collection
#   - Confirm that exactly one element is truthy when
#     ceded to the block
#   - Stop iterating as soon as two elements are truthy
#     - Use a flag or a counter
#     - Return false if counter > 1
#     - Return false at the end if counter < 1
# Output
#   - boolean

# Approach
#   - Set a flag to 0
#   - Iterate over the collection
#   - Increment count if truthy
#   - Return false if counter > 1
#   - Return true if counter 1 at end of iteration else false

def one?(collection, &block)
  count = 0
  collection.each do |ele|
    count += 1 if block.call(ele)
    return false if count > 1
  end
  count == 1
end

p one?([1, 3, 5, 6]) { |value| value.even? }    # -> true
p one?([1, 3, 5, 7]) { |value| value.odd? }     # -> false
p one?([2, 4, 6, 8]) { |value| value.even? }    # -> false
p one?([1, 3, 5, 7]) { |value| value % 5 == 0 } # -> true
p one?([1, 3, 5, 7]) { |value| true }           # -> false
p one?([1, 3, 5, 7]) { |value| false }          # -> false
p one?([]) { |value| true }                     # -> false
