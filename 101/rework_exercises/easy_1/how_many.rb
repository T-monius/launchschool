# how_many.rb

# Write a method that counts the number of occurrences of each
# element in a given array.

# Understanding:
# Input: array
# Output: string
# Can use an associative array (nested array structure)
# Can use a hash

# Algorithm:
# Set empty hash with default 0
# Iterate over the array
# hash[element] += 1
# iterate over hash and output key and value in string

# Challenge:
# Could I do this without the convenient use of a hash and a default
# value?
#   Establish array of unique elements
#   Iterate over outer array
#     Find out if element is included already in unique_element array
#       Create include? method
#     Add element if not included
#   Use array of unique elements to count
#     Create an associative array with the unique elements
#     Iterate over original input array
#       iterate over associative array
#       add to value (+=1) if element in the outer iteration matches
#       first element in associative array

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

def count_occurrences(vehicles)
  veh_hash = Hash.new(0)

  vehicles.each { |vehicle| veh_hash[vehicle] += 1 }

  veh_hash.each { |vehicle, frequency| puts "#{vehicle} => #{frequency}" }
end

count_occurrences(vehicles)
# Once counted, print each element alongside the number of
# occurrences.

# Expected output:
=begin
car => 4
truck => 3
SUV => 1
motorcycle => 2
=end
