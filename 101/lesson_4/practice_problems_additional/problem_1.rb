# problem_1.rb

# Given the array below
# Turn this array into a hash where the names are the keys and the
# values are the positions in the array.

# Understanding:
# Can use each_with_index and initiate a hash to be pushed to prior
# to method call
# Or, use each_with_object passing in hash and pushing to it
# Or, loop having initialized hash and counter prior to loop
# Or, Can use each having initialized a counter and hash object

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

f_hash = {}

flintstones.each_with_index {|name, index| f_hash[name]= index}

puts f_hash