# print_while.rb

# Using a while loop, print 5 random numbers between 0 and 99. The
# code below shows an example of how to begin solving this exercise.

numbers = []

while numbers.length < 5
  number = rand(99)
  numbers << number
  puts number
end
