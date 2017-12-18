 # problem_16.rb

# A UUID is a type of identifier often used as a way to uniquely identify
# items...which may not all be created by the same system. That is, without
# any form of synchronization, two or more separate computer systems can
# create new items and label them with a UUID with no significant chance of
# stepping on each other's toes.

# It accomplishes this feat through massive randomization. The number of
# possible UUID values is approximately 3.4 X 10E38.

# Each UUID consists of 32 hexadecimal characters, and is typically broken
# into 5 sections like this 8-4-4-4-12 and represented as a string.

# It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

# Write a method that returns one UUID when called with no parameters.

# Understanding:
# Hexadecimal numbers are base 16 where 0-9 represent those values and 
# a-f represent 10-16
# Create a randomized hexadecimal number that is 8 characters long
# Attach it to another randomized hex that is 4, 4, 4 , then 12 long
# Create a method that will create a hex number that is one char
# Create another method that calls the other with an argument that
#   represents the length of the string to be outputted.
# Perhaps a third method, that creates five random hex numbers of the 
#   desired lenghts and outputs them in one string.

def single_hex_char
  hex_hash = {  10 => 'a', 11 => 'b', 12 => 'c', 13 => 'd',
                14 => 'e', 15 => 'f'  }

  num = (1..15).to_a.sample
  if num < 10
    num.to_s
  else
    hex_hash[num]
  end
end

def hex_of_length(int)
  return_string = ''

  int.times { return_string << single_hex_char}
  return_string
end

def uuid_maker
  "#{hex_of_length(8)}-#{hex_of_length(4)}-#{hex_of_length(4)}-" +
  "#{hex_of_length(4)}-#{hex_of_length(12)}"
end

puts uuid_maker
