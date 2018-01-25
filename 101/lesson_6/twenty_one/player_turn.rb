# player_turn.rb

# Understanding:
# I don't understand why the LS solution for this turn puts busted as
# and or at that break.
# Presumably, the player could only bust if after hitting, he busts.
# Ah, unless he busted from the previous hit.
#   In which case, the prompt shouldn't re-appear here to hit again.
# Either way, there is a glitch somewhere, or I'm missing something.
# I'd add onto the loop calling the 'hit' method and breaking before
# re-prompting if the result is a bust.
# Or, break and put the hit clause in an even larger outer loop
#   It looks like that is the intent of the code as answer was
#   initialized outside of the loop.

# THIS ALL SEEMS RATHER CONVOLUTED, AND I DON'T KNOW IF IT'S THE RIGHT
# SOLUTION

def hit(deck, hnd)
  card = get_card_from_deck(deck)
  hnd[card[0]] = card[1]
end

def busted?(hnd)
  if calculate_values(hnd) > 21
    true
  else
    false
  end
end

def continue?
  answer = ''
  puts "Would you like to play again? (yes or anything else for no)."
  answer = gets.chomp
  if answer.downcase.start_with?('y')
    true
  else
    false
  end
end

answer = nil
loop do
  puts "hit or stay?"
  answer = gets.chomp
  break if answer == 'stay'

  hit(game_deck, player_hand)
  display_player_hand(player_hand)
  puts calculate_values(player_hand)
  break if busted?(player_hand)
end

if busted?(player_hand)
  # probably end the game? or ask the user to play again?
  puts "Sorry, you broke :-(."
  break if continue? == false
else
  puts "You chose to stay!"  # if player didn't bust, must have stayed to get here
end
