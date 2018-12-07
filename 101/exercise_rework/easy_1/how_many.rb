# how_many.rb

# Understanding
#   Input, array
#   Output, print a count to the standard output

def count_occurrences(arr)
   hash_count = arr.each_with_object(Hash.new(0)) do |el, hash|
     hash[el] += 1
   end

   hash_count.each { |el, count| puts "#{el} => #{count}"}
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)

# Expected output:

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2
