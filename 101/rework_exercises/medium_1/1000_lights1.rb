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
# Input, an integer
#   Represents n switches in switch bank
#   Represents the number of iterations
# Task,
#   Flip switches at each iteration according to integer value of iteration
#   Push index of switches that are on to an array and return
# Output, array
#   Represents the switches that are 'on'

def switch_flipper(n)
  switch_bank = []
  1.upto(n) { |i| switch_bank << [i, false] }
  counter = 1

  loop do
    break if counter > n

    switch_bank.each do |switch_arr|
      if switch_arr[0] % counter == 0
        switch_arr[1] = !switch_arr[1]
      end
    end
    counter += 1
  end
  switch_bank.select { |switch| switch[1] == true }.map { |arr| arr[0] }
end

p switch_flipper(5)
p switch_flipper(10)