# double_doubles.rb

# A double number is a number with an even number of digits whose left-side
# digits are exactly the same as its right-side digits. For example, 44,
# 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

# Write a method that returns 2 times the number provided as an argument,
# unless the argument is a double number; double numbers should be returned
# as-is.

# Understanding:
# Turn the number into a string
# Split it in half
#   If first half not equal to second hald turn whole to int and double
#   else return number

def twice(num)
  num_string = num.to_s
  half = num_string.length/2
  if num_string[0...half] == num_string[half..-1]
    num
  else
    num * 2
  end
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
# underscores when printing long numbers. Don't be alarmed if you don't see
# the underscores when running your tests.
