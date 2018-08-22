# each_cons2.rb

# Understanding:
# - Previous exercise limited the consecutive elements to iterate
#   to 2.
# - `Enumerable#each_cons` can handle any number of elements
#   at a time.
#   + The initial solution iterated an array and passed the
#     current element at iteration and one more to a block
#   + Our present implementation needs to pass the present
#     element and an unknown number of elements to the block
#     > We can represent an unknown number of arguments with
#       the splat (*) operator
#     > When do we apply the splat?
#     > We may not actually need the splat, as we know the
#       number of elements to be yielded once the method is
#       called.
#     > It's more of a question of yielding an array of
#       elements as one argument.
#       = I can't call `yield` multiple times for each
#         consecutive element of the array while passing
#         those elements together with the current array at
#         iteration
#       = I need the splat operator here to return a comma
#         separated list to pass into `yield`
# - Modify our implementation to take an argument that indicates
#   how many elements should be processed at a time.
# - Cannot iterate with every possible iterator.
# - Input
#   + Array
#   + Integer

# Approach:
# - Iterate over the array argument
#   + Pass in the current element as well as the following
#     index plus the number specified
#     > Break this array into a comma separated list (*)
#   + Stop iteration if idx + the specifier is beyond the
#     length of the aray
# - Return `nil`

def each_cons(arr, specifier)
  if specifier == 1
    arr.each { |ele| yield(ele) }
  elsif specifier == 2
    arr.each_with_index do |ele, idx|
      yield(ele, arr[(idx + 1)]) if idx < (arr.size - 1)
    end
  else  
    arr.each_with_index do |ele, idx|
      next_index = idx + 1
      last_index_specified = idx + specifier
      consecutive_elements = arr[next_index...last_index_specified]
      #puts "#{ele}, #{last_index_specified}, #{consecutive_elements}"
      yield(ele, consecutive_elements) if arr.slice(last_index_specified - 1)
    end
  end
  nil
end

def each_cons1(arr, specifier)
  arr.each_with_index do |ele, idx|
    next_index = idx + 1
    last_index_specified = idx + specifier
    consecutive_elements = arr[next_index...last_index_specified]
    yield(ele, *consecutive_elements) if arr.slice(last_index_specified - 1)
  end
  nil
end

# each_cons([1, 3, 6, 10], 1)
# puts "--------------------"
# each_cons([1, 3, 6, 10], 2)
# puts "--------------------"
# each_cons([1, 3, 6, 10], 3)
# puts "--------------------"
# hash = {}
# each_cons([1, 3, 6, 10], 1) do |value|
#   hash[value] = true
# end
# p hash == { 1 => true, 3 => true, 6 => true, 10 => true }

# hash = {}
# each_cons([1, 3, 6, 10], 2) do |value1, value2|
#   hash[value1] = value2
# end
# p hash # == { 1 => 3, 3 => 6, 6 => 10 }
# puts "--------------------"
# hash = {}
# each_cons([1, 3, 6, 10], 3) do |value1, *values|
#   hash[value1] = values
# end
# p hash # == { 1 => [3, 6], 3 => [6, 10] }
# puts "--------------------"
# hash = {}
# each_cons([1, 3, 6, 10], 4) do |value1, *values|
#   hash[value1] = values
# end
# p hash # == { 1 => [3, 6, 10] }
# puts "--------------------"
# hash = {}
# each_cons([1, 3, 6, 10], 5) do |value1, *values|
#   hash[value1] = values
# end
# p hash # == {}

hash = {}
each_cons1([1, 3, 6, 10], 1) do |value|
  hash[value] = true
end
p hash == { 1 => true, 3 => true, 6 => true, 10 => true }

hash = {}
each_cons1([1, 3, 6, 10], 2) do |value1, value2|
  hash[value1] = value2
end
p hash # == { 1 => 3, 3 => 6, 6 => 10 }
puts "--------------------"
hash = {}
each_cons1([1, 3, 6, 10], 3) do |value1, *values|
  hash[value1] = values
end
p hash # == { 1 => [3, 6], 3 => [6, 10] }
puts "--------------------"
hash = {}
each_cons1([1, 3, 6, 10], 4) do |value1, *values|
  hash[value1] = values
end
p hash # == { 1 => [3, 6, 10] }
puts "--------------------"
hash = {}
each_cons1([1, 3, 6, 10], 5) do |value1, *values|
  hash[value1] = values
end
p hash # == {}
