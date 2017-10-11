# Write a method that takes one argument, a positive integer, and
# returns a string of alternating 1s and 0s, always starting with
# 1. The length of the string should match the given integer.

# Understanding:
# Input = int
# Output = string
# Input represents the length of the string
# Output alternatively 1 or 0 depending on the index of the string: 
# odd index print 0 while even index print 1
# Set array to save string elements length of integer
# Print string

# Algorithm
# Start
# Set empty array variable
# Set variable 'i' to represent index
# While loop which pushes 1 or Zero to array until hitting input limit
# Print array w/ .join

def stringy(input)
  array = []
  i = 0
  while i <= (input-1)
    if i.even?
      array.push(1)
    else
      array.push(0)
    end
    i +=1
  end
  return array.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'