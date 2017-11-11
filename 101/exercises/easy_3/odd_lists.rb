# odd_lists.rb

# Write a method that returns an Array that contains every other
# element of an Array that is passed in as an argument. The values
# in the returned list should be those values that are in the 1st,
# 3rd, 5th, and so on elements of the argument Array.

# Further Exploration:
# Try to solve this exercise in at least 2 additional ways.

=begin
  arr.reject! {|element| arr.index(element).odd?}
  Also works but seems to be rather poor code as mutation shouldn't
  occur during mutation.
=end

def oddities(array)
  a = []
  array.length.times do |i|
    if i.even?
      a << array[i]
    end 
  end
  a
end

def other_oddities(arr)
  even_idxs = []
  idx = 0
  while arr.length > idx
    if idx.even?
      even_idxs << arr[idx]
    end
    idx += 1
  end
  even_idxs
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([])  == []
puts
puts other_oddities([2, 3, 4, 5, 6])  == [2, 4, 6]
puts other_oddities(['abc', 'def']) == ['abc']
puts other_oddities([123])  == [123]
puts other_oddities([])  == []
