# multiplying_two_numbers.rb

# Create a method that takes two arguments multiplies them together,
# and returns the result.

# ex => multiply(3, 5) == 15

def multiply(first, second)
  first.send(:*, second)
end

puts multiply(3, 5)
