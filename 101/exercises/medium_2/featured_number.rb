# featured_number.rb

# A featured number (something unique to this exercise) is an odd
# number that is a multiple of 7, and whose digits occur exactly once
# each. So, for example, 49 is a featured number, but 98 is not (it is
# not odd), 97 is not (it is not a multiple of 7), and 133 is not (the
# digit 3 appears twice).

# Write a method that takes a single integer as an argument, and
# returns the next featured number that is greater than the argument.
# Issue an error message if there is no next featured number.

# Understanding:
# (1) odd
# (2) multiple of 7
# (3) digits appear once
#   by nature, a number couldn't have more than 10 digits because one
#   would have to repeat (at least using base 10 math)
# Return next featured number larger than the input number

# Algorithm:
# Define multiple of 7 method
# Define uniq? method
# Iterate starting from one number larger than the input number
# return error if number is greater than 9 digits
# if odd? && multiple 7 && uniq?
#   return number
# else continue iterating 

def multiple_of_7?(num)
  num % 7 == 0
end

def uniq?(num)
  num.digits.uniq == num.digits
end

def featured(num)
  featured_number = num + 1
  loop do
    break if featured_number > 9_999_999_999

    if featured_number.odd? && multiple_of_7?(featured_number) &&
       uniq?(featured_number)
      return featured_number
    else
      featured_number += 1
    end
  end
  'There is no possible number that fulfills those requirements.'
end

# Examples:

puts featured(12) == 21
puts featured(20) == 21
puts featured(21) == 35
puts featured(997) == 1029
puts featured(1029) == 1043
puts featured(999_999) == 1_023_547
puts featured(999_999_987) == 1_023_456_987

puts featured(9_999_999_999) # -> There is no possible number that fulfills
                        # those requirements
