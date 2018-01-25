# fe_odd.rb

# This solution relies on the fact that % is the modulus operator in
# Ruby, not a remainder operator as in some other languages.
# Remainder operators return negative results if the number on the
# left is negative, while modulus always returns a non-negative
# result if the number on the right is positive.

=begin
modulus remainder
5 mod 2 == 1  5 rem 2 == 1
-5 mod 2 == 1 -5 rem 2 == -1
5 mod -2 == -1  5 rem -2 == 1
-5 mod -2 == -1 -5 rem -2 == -1
=end

# If you weren't certain whether % were the modulus or remainder
# operator, how would you rewrite #is_odd? so it worked regardless?

# The Integer#remainder method performs a remainder operation in
# Ruby. Rewrite #is_odd? to use Integer#remainder instead of %. Note:
# before version 2.4, Ruby used the Numeric#remainder method instead.

# Understanding:
# If the intent of the code is to return a boolean, I can get the
# absolute value of a number and then call remainder on it.
# Or, I can accept 1 or -1 as acceptable odd evaluations.

def is_odd?(int)
  int.remainder(2) == 1 || int.remainder(2) == -1
end

# Examples:

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true
