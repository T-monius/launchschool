# problem_15.rb

# Given this data structure write some code to return an array which
# contains only the hashes where all the integers are even.

# Understanding:
# Iterate over the array
#   Return array of only the hashes whose key arrays are all even numbers

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

p arr.select {|hsh| hsh.values.flatten.all? {|int| int.even?}}
