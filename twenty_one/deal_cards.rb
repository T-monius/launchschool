# deal_cards.rb

# Understanding:
# Deck is a nested array
# Individual card is an array
#   idx 0 is card name
#   idx 1 is value
# Method to return a single card (array)
#   To choose card first sample the array to get a random suit
#   Then call keys on the chosen idx 1 (card hash) of returned suit
#   Call sample on array of keys
#   Return key and value in an array
# Player's hand is a hash
#   If I use a hash and add to it, I'll have to include the suit;
#   otherwise, a previous card with the same value will be overwritten
#   If I use an array to represent the player's hand, I'll have to
#   iterate a bit more to add the values of the cards.
#   To use a unique symbol
# Dealer's hand is a hash
# Method to create a hand

def get_card_from_deck(deck)
  suit = deck.sample
  card_name = suit[1].keys.sample
  card = [card_name, suit[1].delete(card_name)]
end

def create_hand(deck)
  hand = Hash.new(0)
  2.times do 
    card = get_card_from_deck(deck)
    hand[card[0]] = card[1]
  end
  hand
end
