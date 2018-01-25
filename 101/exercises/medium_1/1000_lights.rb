# 1000_lights.rb

# You have a bank of switches before you, numbered from 1 to n. Each switch
# is connected to exactly one light that is initially off. You walk down
# the row of switches and toggle every one of them. You go back to the
# beginning, and on this second pass, you toggle switches 2, 4, 6, and so
# on. On the third pass, you go back again to the beginning and toggle
# switches 3, 6, 9, and so on. You repeat this process and keep going until
# you have been through n repetitions.

# Write a method that takes one argument, the total number of switches, and
# returns an Array that identifies which lights are on after n repetitions.

# Understanding:
# n is the argument and number of lights
# The iteration represents the interval at which switches are flipped
# Need a data structure that will store state of lights
#   State of lights are 'on' and 'off'
#   Could use boolean true for 'on'/ false for 'off' || 'on' and nil
# Could use variable 'switch' to interact with data structure
# Initialize a hash w/ n keys?
#   Initial value for all 'off'?
# Iterate over hash?
#   Eka! Maybe I ought to use an associatave array...
#   If iteration % n == 0, flip swith?
# Flip switch means '!' of object if boolean, or simply use 'on' => off 
# and vice versa


# Scratch it all and use array that stores one of two values, and index 
# represents light (May make it difficult if that also represents interation)
#   Maybe create a separate counter. Could possible solve with a loop to start
#   Counter represents the iteration, but the array is iterated over at each
#   iteration of the loop
#   This can be done with an inner loop or each

# Algorithm:
# Set empty array
# n.times push false ('off') to array
# array1
# Loop
#   break if counter > array.size
#   iterate over array with index
#     if (index + 1) % counter == 0
#       array[index] == opposite of element
#   increase counter
# Iterate over array and push to array1 index +1 of true ('on') elements

def flip_switcher(n)
  switch_bank = []
  n.times { switch_bank << false }
  switches_on = []
  counter = 1

  loop do
    break if counter > switch_bank.length

    switch_bank.each_with_index do | switch, position |
      switch_bank[position] = !switch if (position + 1) % counter == 0
    end
    counter += 1
  end
  # Not quite rigth because I want to push the index not the actual object
  switch_bank.each.with_index do |switch, idx|
    switches_on << idx + 1 if switch == true
  end
  switches_on
end

=begin
Example with n = 5 lights:

round 1: every light is turned on
round 2: lights 2 and 4 are now off; 1, 3, 5 are on
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
The result is that 2 lights are left on, lights 1 and 4. The return value
is [1, 4].

With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value
is [1, 4, 9].
=end

p flip_switcher(5)
p flip_switcher(10)
