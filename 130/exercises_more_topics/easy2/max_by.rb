# max_by.rb

require 'pry'

# Understanding:
# - Method
#   + Iterates over a collection
#   + Yield items to the block
#   + Return largest block return value
# Input
#   - Array
#   - Block
# Task
#   + Yield all elements to the block
#   + Determine which element returns the largest value from
#     block.
#   + Two important pieces of information
#     > Element
#     > Value
#     > Value hash
#     > Else, Running totals variables
#     > Else, Running associative array w/ largest element and
#       value so far
# Output
#   - Element with largest value

# Approach
# - Return nil if input argument is an empty array
# - Set to variables
#   + One to first array element
#   + Second to the value of the first element
# - Iterate over collection
#   > Set element to max variable if it's value is greater
#     than the greatest so far.
# - Return max value

def max_by(arr)
  return nil if arr.empty?
  max_element = arr[0]
  max_value = yield(arr[0])
  arr.each do |ele|
    if yield(ele) > max_value
      max_element = ele
      max_value = yield(ele)
    end
  end
  max_element
end

p max_by([1, 5, 3]) { |value| value + 2 } == 5
p max_by([1, 5, 3]) { |value| 9 - value } == 1
p max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
p max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
p max_by([-7]) { |value| value * 3 } == -7
p max_by([]) { |value| value + 5 } == nil
