# oo_twenty_one.rb

class Player
  attr_accessor :hand, :card_total

  def initialize
    # what would the "data" or "states" of a Player object entail?
    # maybe cards? a name?
    self.hand = []
  end

  def busted?
    card_total > 21
  end

  def to_s
    hand.map(&:to_s).join(' ')
  end

  def ace?
    !!hand.any? { |card| card.face == 'ace' }
  end

  def calculate_aces(non_aces_total, aces)
    case aces
    when 3
      non_aces_total + 3
    when 2
      return non_aces_total + 12 if non_aces_total + 12 <= 21
      non_aces_total + 2
    when 1
      return non_aces_total + 11 if non_aces_total + 11 <= 21
      non_aces_total + 1
    end
  end

  def total_with_ace
    aces, non_aces = hand.partition { |card| card.face == 'ace' }
    non_aces_total = non_aces.sum(&:value) # { |card| card.value }
    ace_count = aces.length
    calculate_aces(non_aces_total, ace_count)
  end

  def total
    self.card_total = hand.sum(&:value) if !ace?
    self.card_total = total_with_ace if ace?
  end
end

class Dealer < Player
  attr_accessor :deck

  def initialize
    super
    self.deck = Deck.new
  end

  def deal
    card = @deck.cards.sample
    @deck.cards.delete(card)
  end

  def deal_to_self
    hand << deal
  end

  def deal_to_player(player_hand)
    player_hand << deal
  end
end

class Deck
  CARD_VALUES = { 'ace' => [1, 11], 'one' => 1, 'two' => 2, 'three' => 3,
                  'four' => 4, 'five' => 5, 'six' => 6, 'seven' => 7,
                  'eighth' => 8, 'nine' => 9, 'ten' => 10, 'jack' => 10,
                  'queen' => 10, 'king' => 10 }
  SUITS = ['diamonds', 'spades', 'clovers', 'hearts']

  attr_reader :cards

  def initialize
    @cards = create_deck
  end

  def create_deck
    deck = SUITS.map do |suit|
      CARD_VALUES.map { |face, v| Card.new(face, v, suit) }
    end
    deck.flatten
  end
end

class Card
  attr_reader :face, :value, :suit

  def initialize(face, value, suit)
    @face = face
    @value = value
    @suit = suit
  end

  def to_s
    "#{face} of #{suit}"
  end
end

class Game
  attr_reader :player, :dealer

  def initialize
    @player = Player.new
    @dealer = Dealer.new
  end

  def start
    loop do
      initial_deal
      total_participant_cards
      show_cards
      player_turn
      dealer_turn
      show_result
      break unless play_again?
      reset
    end
  end

  private

  def prompt(msg)
    puts "=> #{msg}"
  end

  def initial_deal
    2.times { dealer.deal_to_self }
    2.times { dealer.deal_to_player(player.hand) }
  end

  def total_participant_cards
    player.total
    dealer.total
  end

  def show_cards
    clear
    prompt("The dealer's hand is: ")
    puts dealer.hand[0..1]
    puts dealer.card_total
    puts '-------------------------'
    prompt("The player's hand is: ")
    puts player.hand
    puts player.card_total
  end

  def clear
    system 'clear'
  end

  def query_player
    prompt('Would you like to hit? (y/n)')
    answer = ''
    loop do
      answer = gets.chomp
      break if answer.start_with?('y', 'n')
      prompt("That's not a valid answer.")
    end
    return 'hit' if answer.start_with?('y')
    'stay'
  end

  def player_turn
    loop do
      action = query_player
      break if action == 'stay'
      dealer.deal_to_player(player.hand)
      total_participant_cards
      show_cards
    end
  end

  def dealer_turn
    return nil if player.busted?
    loop do
      break if dealer.card_total >= 17
      dealer.deal_to_self
      total_participant_cards
      show_cards
    end
  end

  def determine_victor
    if player.busted?
      'dealer'
    elsif dealer.busted?
      'player'
    elsif player.card_total > dealer.card_total
      'player'
    elsif player.card_total == dealer.card_total
      'tie'
    else
      'dealer'
    end
  end

  def show_result
    puts "You busted :-(..." if player.busted?
    puts "Dealer busted :-)..." if dealer.busted?
    puts "It's a tie!" if determine_victor == 'tie'
    puts "#{determine_victor} won!"
  end

  def play_again?
    answer = ''
    loop do
      prompt('Would you like to play again? (y/n)')
      answer = gets.chomp
      break if answer.start_with?('y', 'n')
      prompt('That is not a valid answer.')
    end
    return true if answer.start_with?('y')
    false
  end

  def reset
    dealer.deck = Deck.new
    dealer.hand = []
    player.hand = []
  end
end

Game.new.start
