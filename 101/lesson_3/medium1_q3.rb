# medium1_q3.rb

# Alan wrote the following method, which was intended to show all of
# the factors of the input number:
=begin
def factors(number)
  dividend = number
  divisors = []
  begin
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end until dividend == 0
  divisors
end
=end
# Alyssa noticed that this will fail if the input is 0, or a negative
# number, and asked Alan to change the loop. How can you make this
# work without using begin/end/until? Note that we're not looking to
# find the factors for 0 or negative numbers, but we just want to
# handle it gracefully instead of raising an exception or going into
# an infinite loop.

# Understanding
# Could change the end until dividend == 0 and keep same loop
# but instructed to use something else.
# Can use a different kind of loop, but not sure if that's what's
# being looked for here. 
# 

def factors(number)
  dividend = number
  divisors = []
  while dividend > 0
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors
end

p factors(10)
p factors(11)
p factors(43)

# Bonus 1

# What is the purpose of the number % dividend == 0 ?
# The purpose is to see if dividing by said dividend has a remainder.
# If there is no remainder, it divides evenly and is a factor.

# Bonus 2

# What is the purpose of the second-to-last line in the method 
# (the divisors before the method's end)?
# The purpose is to return the divisors array.
