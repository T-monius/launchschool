# each_with_index.rb

# Understanding:
# - Write a method
# - Input
#   + An array
# Task
#   + Iterate over the input array
#   + Yield the element at iteration and an index to the block
# - Output
#   + Reference to the original arr

def each_with_index(arr)
  idx = 0
  arr.each do |ele|
    yield(ele, idx)
    idx += 1
  end
end

result = each_with_index([1, 3, 6]) do |value, index|
  puts "#{index} -> #{value**index}"
end

puts result == [1, 3, 6]
