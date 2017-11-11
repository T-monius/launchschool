# even_lists.rb

# This is the FURTHER EXPLORATION for odd_lists.rb
# Write a companion method that returns the 2nd, 4th, 6th, and so on
# elements of an array.

# Write a method that returns an Array that contains every other
# element of an Array that is passed in as an argument. The values
# in the returned list should be those values that are in the 1st,
# 3rd, 5th, and so on elements of the argument Array.

def evens(array)
  a = []
  array.length.times do |i|
    if i.odd?
      a << array[i]
    end 
  end
  a
end

puts evens([2, 3, 4, 5, 6]) == [2, 4, 6]
puts evens(['abc', 'def']) == ['abc']
puts evens([123]) == [123]
puts evens([])  == []
