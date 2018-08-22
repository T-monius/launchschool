# zipper.rb

# Understanding:
# - `Array#zip` takes the corresponding elements of two arrays and
#   combines them in sub-arrays of an outer return array
# - Input
#   > Two arrays
# - Output
#   > New array
#     + Sub-arrays
#     + Two elements long.
#     + Outer array length the size of the two input arrays
#     + Arrays will be the same length.

# Approach:
# - Set return_array to empty
# - Iterate
#   + Iterate over first input array with `each_with_index`
#   + Push element and element of second array accesses
#     with index parameter to return array
# - Return multi-dimensional array

def zip(arr, arr1)
  zipped = []
  arr.each_with_index { |ele, idx| zipped << [ele, arr1[idx]] }
  zipped
end

p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]

