# string_signed_num.rb

# Write a method that takes a String of digits, and returns the
# appropriate number as an integer. The String may have a leading +
# or - sign; if the first character is a +, your method should return
# a positive number; if it is a -, your method should return a
# negative number. If no sign is given, you should return a positive
# number.

def running_total(array)
  total = 0
  array.map do |e|
    total = total * 10 + e
  end
  total
end

def string_to_signed_integer(num_string)
  str_numbers_and_ints = {  '0' => 0,
                            '1' => 1,
                            '2' => 2,
                            '3' => 3,
                            '4' => 4,
                            '5' => 5,
                            '6' => 6,
                            '7' => 7, 
                            '8' => 8,
                            '9' => 9, }
  array = []
  num_string.chars.each {|char| array << str_numbers_and_ints[char]}
  if array[0] == nil
    if num_string.start_with?('-')
      negative = running_total(array[1..-1])
      0 - negative
    else
      running_total(array.compact)
    end
  else
    running_total(array) 
  end  
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100
