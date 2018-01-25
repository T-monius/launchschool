# list_of_digits.rb

# Write a method that takes one argument, a positive integer, and
# returns a list of the digits in the number.

# Understanding:
# Input: integer
# Output: integer
# Can maintain the object type and break the number down mathemetically
#   As the number is broken down mathematically, push it to an array
# Or, can use built in Integer#digits method and Array#reverse
# Can work problem iterratively or declaratively
# Can I do it in a mathematical way with an iterating method?
#   Can't iterate on an integer
#   Have to convert to a string first to make a one-liner?

# Algorithm (mathematical breakdown):
# Set empty array
# Declare loop
# Push num modulus 10 to array
# Set num to itself divided by ten
# break if num == 0
# Return array

def digit_list(num)
  num_array = []

  loop do
    num_array.unshift(num % 10)
    num = num / 10
    break if num == 0
  end
  num_array
end

def digit_list1(num)
  num_array = []

  loop do
    num, rem = num.divmod(10)
    num_array.unshift(rem)
    break if num == 0
  end
  num_array
end

# Examples:

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

puts digit_list1(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list1(7) == [7]                     # => true
puts digit_list1(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list1(444) == [4, 4, 4]             # => true
