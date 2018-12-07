# list_digits.rb

# Understanding
#   - List easily represented by and array
#   - Produce and array of the digits in a number
#   - Given number base 10
#     + Base ten digits are ten times greater than the number
#       to the right of self
#     + Iterate over the number
#     + Take the remainder of 10 division of the number and
#       prepend to and array
#     + Stop iterating when the number is 0

def digit_list(num)
  digit_array = []

  loop do
    break if num == 0

    num, digit_remainder = num.divmod(10)
    digit_array.unshift(digit_remainder)
  end
  digit_array
end
p digit_list(12345) == [1, 2, 3, 4, 5]     # => true
p digit_list(7) == [7]                     # => true
p digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
p digit_list(444) == [4, 4, 4]             # => true
