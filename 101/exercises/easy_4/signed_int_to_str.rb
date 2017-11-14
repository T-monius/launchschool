# signed_int_to_str.rb

# In the previous exercise, you developed a method that converts
# non-negative numbers to strings. In this exercise, you're going to
# extend that method by adding the ability to represent negative
# numbers as well.

def integer_to_string(int)
  string_chars = {
    0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5',
    6 => '6', 7 => '7', 8 => '8', 9 => '9'
  }

  string = ''
  int.digits.reverse.each {|digit| string << string_chars[digit]}
  string
end

def signed_int_to_str(number)
  if number < 0
    integer_to_string(-1*number).prepend('-')
  elsif number > 0   
    integer_to_string(number).prepend('+')
  else
    integer_to_string(number)
  end
end

puts signed_int_to_str(4321) == '+4321'
puts signed_int_to_str(-123) == '-123'
puts signed_int_to_str(0) == '0'
