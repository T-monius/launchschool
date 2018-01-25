# problem_7.rb

# Create a hash that expresses the frequency with which each letter
# occurs in this string:
# ex.:
# { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

statement = "The Flintstones Rock"

letter_hash = Hash.new(0)

statement.chars.each { |char| letter_hash[char] += 1 }

# other solution:

l_hash = Hash.new(0)
counter = 0

loop do
  break if counter > statement.length

  l_hash[statement[counter]] += 1
  counter += 1
end

puts l_hash
