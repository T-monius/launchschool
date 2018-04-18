# exclusive_or.rb

# The || operator returns a truthy value if either or both of its
# operands are truthy, a falsey value if both operands are falsey. The
# && operator returns a truthy value if both of its operands are
# truthy, and a falsey value if either operand is falsey. This works
# great until you need only one of two conditions to be truthy, the
# so-called exclusive or.

# In this exercise, you will write a method named xor that takes two
# arguments, and returns true if exactly one of its arguments is
# truthy, false otherwise.

# Understanding:
# With the || operator one or the other of the arguments can be truthy
# With the && operator both elements have to be truthy.
# xor would be this is truthy && other is falsey
# Or, this is falsey && other is truthy

def xor?(arg, arg1)
  if arg == true && arg1 == false
    true
  elsif arg == false && arg1 == true
    true
  else
    false
  end
end

# Examples:

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false
