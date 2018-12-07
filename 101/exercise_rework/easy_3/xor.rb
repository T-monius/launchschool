# xor.rb

# Understanding:
#   - Exclusive or means exactly one argument is truthy
#   - Ruby otherwise short circuits reqarding truthiness
#     returning as soon as a boolean evaluation can esablish
#     a decisive return value based on one argument.
#   - We are necessarily testing both arguments.
#     + One argument true
#     + Second false

# Approach:
#   - Return true if first argument is true and second argument
#     is false
#   - Return true if first argument is false and second argument
#     is true
#   - Else return false

def xor?(arg, arg1)
  return true if arg == true && arg1 == false
  return true if arg == false && arg1 == true
  false
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false
