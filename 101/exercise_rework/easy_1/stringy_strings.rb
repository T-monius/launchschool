# stringy_strings.rb

# Understanding
# Method
# Input, integer
#   - Iterate as many times as the input integer
#   - Push to a string at every iteration
#   - Flip a flag at iteration to push a 1 or a 0
# Output, string
#   - Alternating 1s and 0s

def stringy(int)
  int.times.with_object('') { |i, str| i.even? ? str << '1' : str << '0' }
end

# Test Cases
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
