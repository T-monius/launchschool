# fibonacci_procedural.rb

# Rewrite your recursive fibonacci method so that it computes its
# results without recursion.

# Understanding:
# A fibonacci number is the result of the sequence of two previous
# numbers before it added together all the way down to one.
# fibonacci 5 represents the fifth number encountered in the sequence
# 

def fibonacci(number_in_sequence)
  return 1 if number_in_sequence == 1
  starting_point = 0
  second_number = 1
  number = 0
  counter = 1

  loop do
    break if counter == number_in_sequence
    number = starting_point + second_number
    starting_point = second_number
    second_number = number
    counter += 1 
  end
  number
end

# Understanding for last digit attempt:
# There is a pattern regarding when a particular digit is the last
# digit of a number in the sequence
#   Multiple of 5
#   A multiple of 5 seems to show up as every 5th element in the 
#   pattern 0 (tens place for 10), 5,5,0,5,5,0
#   5 appears in the sequence at the 5th position
#   Multiple of 2
#   every 3rd element is a multiple of 2
#   Incidentally, 2 appears in the sequence at the third position
#   Multiple of 3
#   

# Examples:

puts "I'm fibonacci of 2: #{fibonacci(2)}"
puts "I'm fibonacci of 3: #{fibonacci(3)}"
puts "I'm fibonacci of 4: #{fibonacci(4)}"
puts "I'm fibonacci of 5: #{fibonacci(5)}"
puts "I'm fibonacci of 6: #{fibonacci(6)}"
puts "I'm fibonacci of 7: #{fibonacci(7)}"
puts "I'm fibonacci of 8: #{fibonacci(8)}"
puts "I'm fibonacci of 9: #{fibonacci(9)}"
puts "I'm fibonacci of 10: #{fibonacci(10)}"
puts "I'm fibonacci of 11: #{fibonacci(11)}"
puts "I'm fibonacci of 12: #{fibonacci(12)}"
puts "I'm fibonacci of 13: #{fibonacci(13)}"
puts "I'm fibonacci of 14: #{fibonacci(14)}"
puts "I'm fibonacci of 15: #{fibonacci(15)}"
puts "I'm fibonacci of 16: #{fibonacci(16)}"
puts "I'm fibonacci of 17: #{fibonacci(17)}"
puts "I'm fibonacci of 18: #{fibonacci(18)}"
puts "I'm fibonacci of 19: #{fibonacci(19)}"
puts "I'm fibonacci of 20: #{fibonacci(20)}"
puts "I'm fibonacci of 21: #{fibonacci(21)}"
puts "I'm fibonacci of 22: #{fibonacci(22)}"
puts "I'm fibonacci of 23: #{fibonacci(23)}"
puts "I'm fibonacci of 24: #{fibonacci(24)}"
puts "I'm fibonacci of 25: #{fibonacci(25)}"
puts "I'm fibonacci of 26: #{fibonacci(26)}"
puts "I'm fibonacci of 27: #{fibonacci(27)}"
puts "I'm fibonacci of 28: #{fibonacci(28)}"
puts "I'm fibonacci of 29: #{fibonacci(29)}"
puts "I'm fibonacci of 30: #{fibonacci(30)}"
puts "I'm fibonacci of 31: #{fibonacci(31)}"
puts "I'm fibonacci of 32: #{fibonacci(32)}"
puts "I'm fibonacci of 33: #{fibonacci(33)}"
puts "I'm fibonacci of 34: #{fibonacci(34)}"
puts "I'm fibonacci of 35: #{fibonacci(35)}"
puts "I'm fibonacci of 36: #{fibonacci(36)}"
puts "I'm fibonacci of 37: #{fibonacci(37)}"
puts "I'm fibonacci of 38: #{fibonacci(38)}"
puts "I'm fibonacci of 39: #{fibonacci(39)}"
puts "I'm fibonacci of 40: #{fibonacci(40)}"
puts "I'm fibonacci of 41: #{fibonacci(41)}"
puts "I'm fibonacci of 42: #{fibonacci(42)}"
puts "I'm fibonacci of 43: #{fibonacci(43)}"
puts "I'm fibonacci of 44: #{fibonacci(44)}"
puts "I'm fibonacci of 45: #{fibonacci(45)}"
puts "I'm fibonacci of 46: #{fibonacci(46)}"
puts "I'm fibonacci of 47: #{fibonacci(47)}"
puts "I'm fibonacci of 48: #{fibonacci(48)}"
puts "I'm fibonacci of 49: #{fibonacci(49)}"
puts "I'm fibonacci of 50: #{fibonacci(50)}"
puts "I'm fibonacci of 51: #{fibonacci(51)}"
puts "I'm fibonacci of 52: #{fibonacci(52)}"
puts "I'm fibonacci of 53: #{fibonacci(53)}"
puts "I'm fibonacci of 54: #{fibonacci(54)}"
puts "I'm fibonacci of 55: #{fibonacci(55)}"
puts "I'm fibonacci of 56: #{fibonacci(56)}"
puts "I'm fibonacci of 57: #{fibonacci(57)}"
puts "I'm fibonacci of 58: #{fibonacci(58)}"
puts "I'm fibonacci of 59: #{fibonacci(59)}"
# puts fibonacci(20)# == 6765
# puts fibonacci(100)# == 354224848179261915075
# puts fibonacci(100_001) # => 4202692702.....8285979669707537501
# puts fibonacci(1_000_007)
