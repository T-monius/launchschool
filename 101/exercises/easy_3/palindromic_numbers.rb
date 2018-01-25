# palindromic_numbers.rb

# Write a method that returns true if its integer argument is
# palindromic, false otherwise. A palindromic number reads the same
# forwards and backwards.

def pal_num?(num)
  num.to_s.reverse == num.to_s
end

puts pal_num?(34543) == true
puts pal_num?(123210) == false
puts pal_num?(22) == true
puts pal_num?(5) == true

# Further Exploration

# Suppose your number begins with one or more 0s. Will your method
# still work? Why or why not? Is there any way to address this?

# Understanding:
# The method will not word as a leading zero causes to_s to return 
# a string value completeley disassociated from the string characters
# A way to deal with this would be to validate the first char of
# every integer given to the method even doing so recursively.
# Validation could test for 0 and return the '0'.

def valid?(number)
  number.to_s.to_i == number
end

def advanced_pal_num?(num)
  if valid?(num)
    pal_num?(num)
  else
    puts "Not a valid number."
  end
end

puts advanced_pal_num?(020)
puts advanced_pal_num?(232) == true
