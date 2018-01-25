# twenty_one.rb

CARD_VALUES = { ace: [1, 11], '1': 1, '2': 2, '3': 3, '4': 4, '5': 5,
                '6': 6, '7': 7, '8': 8, '9': 9, '10': 10, jack: 10,
                queen: 10, king: 10 }

def initialize_deck
  suits = [:spades, :clovers, :diamonds, :hearts]

  suits.map { |suit| [suit, CARD_VALUES.clone] }
end

def get_card_from_deck(deck)
  suit = deck.sample
  suit_name = suit[0]
  card_name = suit[1].keys.sample
  [
    (card_name.to_s + ' of ' + suit_name.to_s).to_sym,
    suit[1].delete(card_name)
  ]
end

def create_hand(deck)
  hand = Hash.new(0)
  2.times do
    card = get_card_from_deck(deck)
    hand[card[0]] = card[1]
  end
  hand
end

# This was originally in the calculate_aces method.
# ace_keys = a_hsh.keys. DON'T REMEMBER WHAT THIS WAS FOR HERE...

def calculate_aces(a_hsh, total)
  aces_present = a_hsh.size

  case aces_present
  when 0
    total
  when 1 && total + 11 <= 21
    total += 11
  when 1 && total + 11 > 21
    total += 1
  when 2 && total + 12 <= 21
    total += 12
  when 2 && total + 12 > 21
    total += 2
  else
    total += aces_present
  end
end

=begin
def calculate_aces(a_hsh, total)
  aces_present = a_hsh.size

  case aces_present
  when 0
    total
  when 1
    if total + 11 <= 21
      total += 11
    else
      total += 1
    end
  when 2
    if total + 12 <= 21
      total += 12
    else
      total += 2
    end
  else
    total += aces_present
  end
end
=end

def calculate_values(hnd)
  aces_hash = hnd.select { |_, value| value.is_a?(Array) }
  hnd1 = hnd.clone
  hnd1.delete_if { |_, value| value.is_a?(Array) }
  total = hnd1.values.sum
  calculate_aces(aces_hash, total)
end

def hand_string(hnd)
  cards = ''
  cards_array = hnd.keys.map(&:to_s)
  cards_array.each_with_index do |card, i|
    if i == (cards_array.size - 1)
      cards << "and " + card
    else
      cards << card + ", "
    end
  end
  cards
end

def display_hand(player, hnd)
  cards = hand_string(hnd)
  if player == 'player'
    puts "You have: #{cards}."
  else
    puts "Dealer has: #{cards}"
  end
end

def hit(deck, hnd)
  card = get_card_from_deck(deck)
  hnd[card[0]] = card[1]
  hnd
end

def busted?(hnd)
  if calculate_values(hnd) > 21
    true
  else
    false
  end
end

def determine_victor(hnd1, hnd2)
  player_result = calculate_values(hnd1)
  dealer_result = calculate_values(hnd2)
  if player_result > dealer_result
    'player'
  elsif dealer_result > player_result
    'dealer'
  elsif player_result == dealer_result
    'tie'
  end
end

def display_winner(result)
  case result
  when 'player' then puts "Congrats! You won!"
  when 'dealer' then puts "Sorry, the house won."
  when 'tie' then puts "Looks like a tie."
  end
end

def continue?
  puts "Would you like to play again? (yes or anything else for no)."
  answer = gets.chomp
  if answer.downcase.start_with?('y')
    true
  else
    false
  end
end

# SHOULD ONLY SHOW ONE OF THE DEALER'S CARDS
# FIGURE OUT PROPER PLACE TO CLEAR THE SCREEN.
# MAKE IT BEST OF A SERIES OF GAMES OR HIT SOMETHING TO QUIT
# SEEMS LIKE THE DISPLAYING OF CARDS COULD BE TIMED DIFFERENTLY
loop do
  game_deck = initialize_deck
  player_hand = create_hand(game_deck)
  dealer_hand = create_hand(game_deck)

  display_hand('player', player_hand)
  puts calculate_values(player_hand)
  display_hand('dealer', dealer_hand)
  puts calculate_values(dealer_hand)
  loop do
    loop do
      puts "hit or stay?"
      answer = gets.chomp
      break if answer == 'stay'

      hit(game_deck, player_hand)
      display_hand('player', player_hand)
      puts calculate_values(player_hand)
      break if busted?(player_hand)
    end

    if busted?(player_hand)
      # probably end the game? or ask the user to play again?
      puts "Sorry, you busted :-(."
      break
    else
      # if player didn't bust, must have stayed to get here
      puts "You chose to stay!"
    end

    loop do
      break if calculate_values(dealer_hand) >= 17

      hit(game_deck, dealer_hand)
      display_hand('dealer', dealer_hand)
      puts calculate_values(dealer_hand)
    end

    if busted?(dealer_hand)
      puts "The dealer busted... You win!"
    else
      champ = determine_victor(player_hand, dealer_hand)
      display_winner(champ)
    end
    break
  end
  break if continue? == false
end
