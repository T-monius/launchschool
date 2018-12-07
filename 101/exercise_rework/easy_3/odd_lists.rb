# odd_lists.rb

# Understanding:
# Method
# Input
#   - Array
# Output
#   - Even indexes of input array in a new array
# 
# Performing selection

def oddities(arr)
  arr.select.with_index { |_, i| i.even? }
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
