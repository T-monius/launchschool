# practice_problem_11.rb

# Given the following data structure use a combination of methods,
# including either the select or reject method, to return a new array
# identical in structure to the original but containing only the integers
# that are multiples of 3.

# Understanding:
# Map over the arr so as to get a same array structure returned
# When operating on inner arrays with Array#select
#   Criteria: (int % 3) == 0

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

p arr.map {|arr| arr.select{|int| (int % 3) == 0}}
