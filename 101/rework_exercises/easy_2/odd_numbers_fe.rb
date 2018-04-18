# odd_numbers_fe.rb

# Further Exploration
# Repeat this exercise with a technique different from the one you
# just used, and different from the solution shown above. You may want
# to explore the use Integer#upto or Array#select methods, or maybe
# use Integer#odd?

counter = 0

loop do
  break if counter > 99
  puts counter if counter % 2 == 1
  counter += 1
end
