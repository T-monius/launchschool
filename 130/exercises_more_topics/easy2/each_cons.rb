# each_cons.rb

# Understanding:
# - `Enumberable#each_cons`
#   + Iterates collection
#   + sequence of `n` elements
#     > Passed to the block
#   + Returns `nil`
# - Input
#   + Arr
#   + Block
# - Task
#   + Iterate 2 at a time
# - Output
#   + `nil`

# Approach:
# - Set variable to one past current index of iteration
# - Iterate the array
#   + Pass the current element and next to the block
# - Return `nil`

def each_cons(arr)
  arr.each_with_index do |ele, idx|
    yield(ele, arr[(idx + 1)]) if idx < (arr.size - 1)
  end
  nil
end

each_cons([1, 4, 5, 6]) { |v, v1| puts "#{v} and #{v1}" }

hash = {}
result = each_cons([1, 3, 6, 10]) do |value1, value2|
  hash[value1] = value2
end

p result == nil
p hash == { 1 => 3, 3 => 6, 6 => 10 }

hash = {}
each_cons([]) do |value1, value2|
  hash[value1] = value2
end
p hash == {}

hash = {}
each_cons(['a', 'b']) do |value1, value2|
  hash[value1] = value2
end
p hash == {'a' => 'b'}
