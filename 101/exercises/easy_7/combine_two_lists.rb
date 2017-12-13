# combine_two_lists.rb

# Write a method that combines two Arrays passed in as arguments,
# and returns a new Array that contains all elements
# from both Array arguments, with the elements taken in alternation.

# You may assume that both input Arrays are non-empty, and that they
# have the same number of elements.

# Understanding:
# Input 2 arrays
# Output one array
# Can iterate for length of arr + arr_1
#   Upon each iteration, if odd iteration push from first array
#   elsif even push from second
# Alternatively,
#   Create an array with length == arr + arr_1 length, nil args
#   

def interleave(arr, arr_1)
  iterations = arr.length + arr_1.length
  interleaved_array = []

  iterations.times do |i|
    if i.even?
      interleaved_array << arr.shift
    else
      interleaved_array << arr_1.shift
    end
  end
  interleaved_array
end

# Further Exploration

# Take a few minutes to read about Array#zip. #zip doesn't do the
# same thing as interleave, but it is very close, and more flexible.
# In fact, interleave can be implemented in terms of zip and one other
# method from the Array class. See if you can rewrite interleave to
# use zip.

def interleave1(arr, arr_1)
  arr.zip(arr_1).flatten
end

# Example:

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
p interleave1([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

