# in_ex_iterators.rb

# Approach:
#   - Define a new enumerator object
#     + Inside of the block which the `::new` method takes
#       yield the result of a factorial of the current
#       number of iteration to the enumerator
#     + Increment
#   - Iterate the enumerator externally
#   - Reset the enumerator
#   - Iterate the enumerator internally

factorials = Enumerator.new do |y|
  a = 1
  loop do
    y << (1..a).reduce(:*)
    a += 1
  end
end

puts 'External iteration:'
7.times { puts "The next factorial is: #{factorials.next}"}

factorials.rewind
puts '-----------------------------------'
puts 'Internal iteration:'
factorials.each_with_index do |factorial, idx|
  break if idx >= 7
  puts "The next factorial is: #{factorial}"
end
