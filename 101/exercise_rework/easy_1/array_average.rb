# array_average.rb

# Understanding:
# Input, array
#   - Integer elements
#   - Find the length of the array
#   - Add all of the elements
#   - Divide sum by length
# Output, average
#   - integer

def average(arr)
  arr.sum.fdiv(arr.length).round(2)
end

# Further Exploration:
p average([1, 5, 87, 45, 8, 8])# == 25
p average([9, 47, 23, 95, 16, 52])# == 40
