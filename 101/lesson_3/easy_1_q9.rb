# easy_1_q9.rb

# Given the hash below:

flintstones = { "Fred" => 0,
                "Wilma" => 1,
                "Barney" => 2,
                "Betty" => 3,
                "BamBam" => 4,
                "Pebbles" => 5 }

# Turn this into an array containing only two elements: Barney's
# name and Barney's number

# Understanding:
# An array version of the hash would be a nested array with keys and 
# values in own arrays
# Can turn hash into array
# Array#assoc would allow me to identify initial value of arrays 
# durring iteration
# Or, while iterating over outer array, calling first index would 
# allow me to make the same comparison
# Once hash is turned into array, it's a matter of keeping only the 
# array with 'Barney' as first index.

# Algorithm:
# Set 'flintstones'to Call to_a on self
# Call assoc on 'flinstones' where obj is 'Barney'
# Set 'flintsones' to this return value 

flintstones = flinstones.to_a.assoc('Barney')
