# victory_rate.rb

POSSIBILITIES = ['rock', 'paper', 'scissors', 'lizard', 'spock']
# For the given data structure:
moves = {human:[['rock', 'win'], ['paper','win'], ['rock','win'], 
                ['lizard', 'loss'], ['spock', 'win'], ['rock', 'loss'],
                ['lizard', 'win'], ['scissors', 'win']],
         computer:[['lizard', 'loss'], ['spock', 'loss'],
                ['scissors','loss'], ['scissors', 'win'], ['rock', 'loss'],
                ['paper', 'win'], ['spock', 'loss'], ['paper', 'loss']]}
# Determine if the victory rate for a particular move is greater than 60%

# Understanding:
# The player's moves are stored in an associative array where the move
# is the first element (idx 0) and the result is the second element
# (idx 1)
# Can create a separate array of only the elements for the move
# Percentage derived from result divided by occurrences

move = 'rock'
player_moves = moves[:human]

def victory_rate(mv, arr)
  occurences = arr.select { |inner_arr| inner_arr[0] == mv }
  wins = occurences.count { |inner_arr| inner_arr[1] == 'win' }
  wins.fdiv(occurences.length).round(2)
end

p victory_rate(move, player_moves)
