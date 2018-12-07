# squaring_argument.rb

# Understanding (FC):
# Exponentiation is multiplying a number by itself n times
#   - First iteration:
#     + Multiply by self
#     + Result
#   - Second and subsequent iterations
#     + Multiply the result of the previous operation by original
#       number.

# Approach:
#   Method takes two inputs
#     - Number to multiply and the power
#     - Set a counter
#     - Set multpiplier to initial number
#     - Loop
#       + Break if counter is equal to power
#       + Set multiplier to produfct of num and multiplier
#       + Increment counter

def multiply(n, n1)
  n * n1
end

def square(num)
  multiply(num, num)
end


def power(x, n)
  if n == 1
    x
  else
    x * power(x, n - 1)
  end
end

def power1(num, n= 1)
  multiplier = num
  counter = 1
  loop do
    break if counter == n
    multiplier = multiply(num, multiplier)
    counter += 1
  end
  multiplier
end

#p square(5) == 25
#p square(-8) == 64

p power(2, 2)
p power(2, 3)
p power(2, 4)
p power(2, 5)

p 2 ** 2
p 2 ** 3
p 2 ** 4
p 2 ** 5

=begin
This is what I wanted to do but couldn't quite work it out.
Another launchschooler put it together.
def power(x, n)
  if n == 1
    x
  else
    x = x * power(x, n - 1)
  end
end
=end
