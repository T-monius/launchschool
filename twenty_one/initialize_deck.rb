# initialize_deck.rb

# Understanding:
# Deck must have 4 of numbers 1-9, Jacks, Queens, Kings, Aces
# Suit does not matter

# Data Structures:
# Since the value or state of the card doesn't matter, array?
#   Deck is an array with 4 nested arrays with suit and card
#   Pulling a random suit from array easy w/ Array#sample
#
#   / NOT USING Can put ace at index zero w/ nested array containing
#     [1,11]
#   Ace at idx 0 puts all other values at their relative positions
#   Make idx 10 an array w/ royal values
#   On second thought, it would be complicated to _scan_ the array for
#   the nested values/
# Hash constant with key (for card), and value
#   Initialize array method uses hash constant to initialize array deck
#   Ace value is an array [1, 11]
#   Suits array
#   Deck array
#   Return a nested array of arrays of four suits
#     Each individual suit contains hashes with card values
#     idx 0 is suit name
#     idx 1 is internal hash

CARD_VALUES = { ace: [1, 11], 1 => 1, 2 => 2, 3 => 3, 4 => 4, 5 => 5,
                6 => 6, 7 => 7, 8 => 8, 9 => 9, 10 => 10, jack: 10,
                queen: 10, king: 10 }

def initialize_deck
  suits = [:spades, :clovers, :diamonds, :hearts]
  deck = []

  deck = suits.map { |suit| [suit, CARD_VALUES.clone] } 
end
