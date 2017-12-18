# practice_problems.rb

# Practice Problem 1:
# How would you order this array of number strings by descending numeric
# value?

arr = ['10', '11', '9', '7', '8']

=begin
a = arr.map {|e| e.to_i}
a.sort! {|a, b| b <=> a}
p a
=end

p arr.map(&:to_i).sort {|a, b| b <=> a}
