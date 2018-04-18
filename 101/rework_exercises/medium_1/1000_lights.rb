# 1000_lights.rb

# You have a bank of switches before you, numbered from 1 to n. Each
# switch is connected to exactly one light that is initially off. You
# walk down the row of switches and toggle every one of them. You go
# back to the beginning, and on this second pass, you toggle switches
# 2, 4, 6, and so on. On the third pass, you go back again to the
# beginning and toggle switches 3, 6, 9, and so on. You repeat this
# process and keep going until you have been through n repetitions.

# Write a method that takes one argument, the total number of
# switches, and returns an Array that identifies which lights are on
# after n repetitions.

# Understanding:
# Input, One integer argument
#   Represents n switches
#   Switches are indexed from 1
#   After n iterations of switching, for switches that are 'on' their
#   number pushed to an array
#   Hash may be a wise choice for a data structure to represent the 
#   swithces since they are not 0 indexed and have a value
# Output, array

# Algorithm:
# Create helper method to return a hash of swithes
#   Iterate n times returning a string digit as a key with false value
# Iterate flipping switches (boolean opposite) of every key whose modulus
#   for nth iteration is 0

def switch_maker(int)
  
end

def flip_switches(int)
  switch_bank = switch_maker(int)

end

# Example with n = 5 lights:

# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
# The result is that 2 lights are left on, lights 1 and 4. The return
# value is [1, 4].

# With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return
#  value is [1, 4, 9].


