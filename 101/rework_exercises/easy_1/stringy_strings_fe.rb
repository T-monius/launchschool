# stringy_strings_fe.rb

# Modify stringy so it takes an optional argument that defaults to 1.
# If the method is called with this argument set to 0, the method
# should return a String of alternating 0s and 1s, but starting with 0
# instead of 1.

# Understanding:
# The LS solution uses an array filled with 1s and 0s then calls .join
# Could I still do this with my approach?
#   Can call to_s on num

def stringy(int, num=1)
  str = ''
  num = num.to_s
  num == '1' ? other_num = '0' : other_num = '1'
  int.times { |i| i.even? ? str << num : str << other_num }
  str
end

# Examples:

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

puts stringy(6, 0) == '010101'
puts stringy(9, 0) == '010101010'
puts stringy(4, 0) == '0101'
puts stringy(7, 0) == '0101010'
