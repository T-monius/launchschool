# How would you order this array of number strings by descending
# numeric value?

arr = ['10', '11', '9', '7', '8']

p arr.sort { |str, str1| str1.to_i <=> str.to_i }
