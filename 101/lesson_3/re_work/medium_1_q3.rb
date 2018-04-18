# medium_1_q3.rb

# Alan wrote the following method, which was intended to show all of
# the factors of the input number:

def factors(number)
  dividend = number
  divisors = []
  loop do
    break if dividend < 1
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  # divisors
end

# Alyssa noticed that this will fail if the input is 0, or a negative
# number, and asked Alan to change the loop. How can you make this
# work without using begin/end/until? Note that we're not looking to
# find the factors for 0 or negative numbers, but we just want to
# handle it gracefully instead of raising an exception or going into
# an infinite loop.

p factors(-10)
p factors(12)
p factors(7)
p factors(0)

# Bonus 1
# What is the purpose of the number % dividend == 0 ?

# The % operation is used to determine what the remainder of dividing
# a number by a particular dividend is. If the remainder is 0, then the 
# dividend can be considered a factor of the operand in which case the
# dividend will be added to the divisors array.

# Bonus 2
# What is the purpose of the second-to-last line in the method (the
# divisors before the method's end)?

# The second to the last line returns the array divisors implicitly.
# Otherwise, the method return value would be the last thing evaluated
# by the method which would be the return value of the block (nil in
# this case.
