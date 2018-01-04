# twenty_one.rb

CARD_VALUES = { ace: [1, 11], :'1' => 1, :'2' => 2, :'3' => 3,
                :'4' => 4, :'5' => 5, :'6' => 6, :'7' => 7, :'8' => 8,
                :'9' => 9,:'10' => 10, jack: 10, queen: 10, king: 10 }

def initialize_deck
  suits = [:spades, :clovers, :diamonds, :hearts]
  deck = []

  deck = suits.map { |suit| [suit, CARD_VALUES.clone] } 
end

def get_card_from_deck(deck)
  suit = deck.sample
  suit_name = suit[0]
  card_name = suit[1].keys.sample
  card = [(card_name.to_s + ' of '+ suit_name.to_s).to_sym,
          suit[1].delete(card_name)]
end

def create_hand(deck)
  hand = Hash.new(0)
  2.times do 
    card = get_card_from_deck(deck)
    hand[card[0]] = card[1]
  end
  hand
end

game_deck = initialize_deck
player_hand = create_hand(game_deck)
dealer_hand = create_hand(game_deck)
