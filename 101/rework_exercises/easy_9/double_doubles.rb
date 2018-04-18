# double_doubles.rb

# A double number is a number with an even number of digits whose
# left-side digits are exactly the same as its right-side digits. For
# example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433,
# and 107 are not.

# Write a method that returns 2 times the number provided as an
# argument, unless the argument is a double number; double numbers
# should be returned as-is.

# Understanding:
# Input
#   Integer
#   Assess the input as to whether it's a double number
#   Double numbers are a repetition of the first half for the second
#     Even number of digits 2 or greater
#   Can evaluate the integer's length by converting to string or array
# Output
#   Integer

def double?(int)
  str_int = int.to_s
  str_length = str.length
  half = str_int.length / 2 - 1
  return false if str_length.odd? || str_length < 2
  return false if # Evaluate to see if the second half is the same as
                  # the first
  true
end

def twice(int)
  return int if double?(int)
  int * 2
end

# Examples:

puts twice(37) == 74
puts twice(44) == 44
puts twice(334433) == 668866
puts twice(444) == 888
puts twice(107) == 214
puts twice(103103) == 103103
puts twice(3333) == 3333
puts twice(7676) == 7676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10

# Note: underscores are used for clarity above. Ruby lets you use
# underscores when writing long numbers; however, it does not print the
# underscores when printing long numbers. Don't be alarmed if you don't
# see the underscores when running your tests.
