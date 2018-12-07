# stringy_strings_fe.rb

# Understanding:
# Modify stringy so it takes an optional argument that\
# defaults to 1. If the method is called with this argument
# set to 0, the method should return a String of alternating
# 0s and 1s, but starting with 0 instead of 1.

# Input, int and optional 1 or 0

def stringy(int, opt = 1)
  case opt
  when 1
    int.times.with_object('') { |i, str| i.even? ? str << '1' : str << '0' }
  when 0  
    int.times.with_object('') { |i, str| i.even? ? str << '0' : str << '1' }
  end
end

# Test Cases
puts stringy(6) == '101010'
puts stringy(9, 1) == '101010101'
puts stringy(4, 0) == '0101'
puts stringy(7, 0) == '0101010'
