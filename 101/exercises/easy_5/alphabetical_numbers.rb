# alphabetical_numbers.rb

# Write a method that takes an Array of Integers between 0 and 19,
# and returns an Array of those Integers sorted based on the English
# words for each number:

# zero, one, two, three, four, five, six, seven, eight, nine, ten,
# eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen,
# eighteen, nineteen

# Understanding:
# Hash will associate each number w/ English word
# Sort number according to whether key for current number less than
# Key for previous number

# Data structures:
# Input array
# Output array
# Hash
# String values
# Integer keys

# Algorithm:
# Set hash, integer = key and english word = value
# Iterate over input array and build new hash
# Sort by values
# Get array of sorted keys
# return sorted array

ENG_EQUIVALENT = {  0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three',
                    4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven',
                    8 => 'eight', 9 => 'nine', 10 => 'ten', 11 => 'eleven',
                    12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen',
                    15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen',
                    18 => 'eighteen', 19 => 'nineteen', 20 => 'twenty' }
# [[1, 'one'],[2, 'two'],[3, 'three'],[4, 'four'],[5, 'five']]

def alphabetic_number_sort(number_array)
  new_hash = {}
  ordered_array = []
  number_array.each {|number| new_hash[number]= ENG_EQUIVALENT[number]}
  ordered_array = new_hash.sort_by {|k, v| v}
  ordered_array.each {|arr| arr.pop}.flatten
end

# Examples:

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
