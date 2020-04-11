# query_assoc.rb
POSSIBILITIES = ['rock', 'paper', 'scissors', 'lizard', 'spock']
# For the given data structure:
moves = {human:[['rock', 'win'], ['paper','win'], ['rock','win'], 
                ['lizard', 'loss'], ['spock', 'win'], ['rock', 'loss'],
                ['lizard', 'win'], ['scissors', 'win']],
         computer:[['lizard', 'loss'], ['spock', 'loss'],
                ['scissors','loss'], ['scissors', 'win'], ['rock', 'loss'],
                ['paper', 'win'], ['spock', 'loss'], ['paper', 'loss']]}
# Determine of a particular move occured two or more times
p arr = moves[:human]
counts = Hash.new(0)
POSSIBILITIES.each do |move|
  counts[move] = arr.count { |inner_arr| inner_arr[0] == move }
end
p counts
# high_count = counts.values.max
# puts counts.select { |k, v| v == high_count }
