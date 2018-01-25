# Write a method that counts the number of occurrences of each 
# element in a given array.

# Understanding:
# The array has multiple instances of the various elements. There 
# are multiple ways to count the occurences of the elements, but
# the given output as well as logic seems to lean toward using a 
# hash to represent each vehicle with its occurence as a value.
# The instructions do not say not to explicitly write a hash with
# vehicle types as symbols which would be the easiest way of doing 
# it. Otherwise, I could find uniq elements in the array and turn 
# them to hash keys through code within the method.

# Abstraction
# Call uniq on vehicles array and store in a variable uniques
# Call .each on uniques and convert its elements to symbols 
# storing the symbols in hash veh_count and giving 0 value
# Call .each on vehicles array

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck',
            'motorcycle', 'motorcycle', 'car', 'truck']

def count_occurrences vehicles
  uniques = vehicles.uniq
  veh_count = {}
  uniques.each {|e| veh_count[e.to_sym] = 0}
  vehicles.each {|vehicle| veh_count[vehicle.to_sym] += 1}
  veh_count.each {|k, v| puts "#{k} => #{v}"}
end

count_occurrences(vehicles)

=begin
  car => 4
  truck => 3
  SUV => 1
  motorcycle => 2 
=end