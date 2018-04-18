# what_century.rb

# Write a method that takes a year as input and returns the century.
# The return value should be a string that begins with the century
# number, and ends with st, nd, rd, or th as appropriate for that
# number.

# New centuries begin in years that end with 01. So, the years
# 1901-2000 comprise the 20th century.

# Understanding:
# Input:
#   Integer
#   Year represented by integer input
# Ouput:
#   String
#     prefix: century number
#       One off from the digit value of a century
#       Set centuries to num / 100 if num % 100 == 0
#       Set centuries to centuries n / 100 + 1 if num % != 0
#     suffix: cardinal number notation
#       1 = st
#       2 = nd
#       3 = rd
#       4-20 = th
#       21+ repeats pattern

def add_suffix(yr)
  case
  when ('11'..'19').include?(yr[-2..-1])
    yr << 'th'
  when yr[-1] == '1'
    yr << 'st'
  when yr[-1] == '2'
    yr << 'nd'
  when yr[-1] == '3'
    yr << 'rd'
  else
    yr << 'th'
  end
end

def century(year)
  centuries = year / 100 if year % 100 == 0
  centuries = year / 100 + 1 if year % 100 != 0
  add_suffix(centuries.to_s)
end

# Examples:

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'
