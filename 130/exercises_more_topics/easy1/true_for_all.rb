# true_for_all.rb

# Understanding:
#   - Test all elements of a collecion
#   - All must return a truthy value from the input block
#   - Return `false ` for first faley value

def all?(arr, &block)
  arr.each { |ele| return false if !block.call(ele) }
  true
end

p all?([1, 3, 5, 6]) { |value| value.odd? } == false
p all?([1, 3, 5, 7]) { |value| value.odd? } == true
p all?([2, 4, 6, 8]) { |value| value.even? } == true
p all?([1, 3, 5, 7]) { |value| value % 5 == 0 } == false
p all?([1, 3, 5, 7]) { |value| true } == true
p all?([1, 3, 5, 7]) { |value| false } == false
p all?([]) { |value| false } == true
