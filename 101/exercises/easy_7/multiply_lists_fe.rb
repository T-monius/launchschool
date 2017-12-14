# multiply_lists_fe.rb

# Further Exploration

# The Array#zip method can be used to produce an extremely compact solution
# to this method. Read the documentation for zip, and see if you can come
# up with a one line solution (not counting the def and end lines).

def multiply_list(arr, arr1)
  arr.zip(arr1).map {|a, b| a.send(:*, b)}
end

def multiply_list1(arr, arr1)
  arr.zip(arr1).map {|arr| arr.inject(:*)}
end

puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
puts multiply_list1([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
