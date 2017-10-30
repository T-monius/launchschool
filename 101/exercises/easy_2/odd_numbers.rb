# odd_numbers.rb

# Print all odd numbers from 1 to 99, inclusive. All numbers should
# be printed on separate lines.

# Understanding:
# No input
# Output odd integers

# Algorithm:
# Set array ints between 1 and 99
# .each method 
# If parameter == even then delete
# puts new array

integer_array = (1..99).to_a

integer_array.each do |int|
  if int.even?
    integer_array.delete(int)
  end
end

puts integer_array
