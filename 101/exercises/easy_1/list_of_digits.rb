# Write a method that takes one argument, a positive integer, and
# returns a list of the digits in the number.

# Understanding:
# Method needs to take positive integers.
# Validate?
# No 'Integer' method to parse a number...
# Have to either divide an input upto some barrier (1Mil for ex.)
# or modulus off the remainder
# Probably use if/elsif/else to divide by 10..100..1000 if number
# is greater than 10..100..1000
# Push remainder of division or modulus left over to array

=begin
  Start
  method digitizer num
  Set array
  While num > 0
  If num >= 1Mil
    mil = num / 1Mil
    push mil to array
    num = num % 1Mil
  elsif num >= 100.000
    hundred_thousand = num/100.000
    push num to array
    num = num % 100.00
  ... successively down to 1
  return array
=end

def digit_list num
  array = []

  while num > 0
    if num >= 1000000
      mil = num / 1000000
      array.push(mil)
      num = num % 1000000
    elsif num >= 100000
      hundred_thousand = num / 100000
      array.push(hundred_thousand)
      num = num % 100000
    elsif num >= 10000
      ten_thousand  = num / 10000
      array.push(ten_thousand)
      num = num % 10000
    elsif num >= 1000
      thousand = num / 1000
      array.push(thousand)
      num = num % 1000
    elsif num >= 100
      hundred = num / 100
      array.push(hundred)
      num = num % 100
    elsif num >= 10
      tens = num / 10
      array.push(tens)
      if num % 10 == 0
        array.push(0)
      end
      num = num % 10
    elsif num >= 0
      array.push(num)
      num = 0
    end 
  end

  return array
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
# puts digit_list(1200000) == [1, 2]