# poker.rb

class Card
  attr_reader :rank, :suit
  include Comparable

  VALUES = { 'Jack' => 11, 'Queen' => 12, 'King' => 13, 'Ace' => 14 }

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_s
    "#{rank} of #{suit}"
  end

  def value
    VALUES.fetch(@rank, @rank)
  end

  def <=>(other_card)
    value <=> other_card.value
  end
end

class Deck
  RANKS = (2..10).to_a + %w(Jack Queen King Ace).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze
  attr_reader :deck

  def initialize
    reset
  end

  def draw
    card = deck.pop
    reset if deck.empty?
    card
  end

  def reset
    @deck = []
    SUITS.each { |suit| RANKS.each { |rank| @deck << Card.new(rank, suit) } }
    deck.shuffle!
  end

  def to_s
    "I'm a deck of #{deck.size} cards."
  end
end

class PokerHand
  attr_reader :hand, :deck, :values

  def initialize(deck)
    @deck = deck
    @hand = []
    5.times { @hand << deck.draw }
    @values = []
    hand.each { |card| @values << card.value }
  end

  def print
  end

  def evaluate
    case
    when royal_flush?     then 'Royal flush'
    when straight_flush?  then 'Straight flush'
    when four_of_a_kind?  then 'Four of a kind'
    when full_house?      then 'Full house'
    when flush?           then 'Flush'
    when straight?        then 'Straight'
    when three_of_a_kind? then 'Three of a kind'
    when two_pair?        then 'Two pair'
    when pair?            then 'Pair'
    else                       'High card'
    end
  end

  #private

  def rank_count(query_card)
    hand.count { |card| card.rank == query_card }
  end

  def suit_count(query_suit)
    hand.count { |card| card.suit == query_suit }
  end

  def royal_flush?
    return false if !flush?
    values.sort == (10..14).to_a
  end

  def straight_flush?
    straight? && flush?
  end

  def four_of_a_kind?
    four = false
    values.each do |value|
      four = true if values.count(value) == 4
    end
    four
  end

  def full_house?
    three_of_a_kind? && pair?
  end

  def flush?
    flush = false
    Deck::SUITS.each do |suit|
      flush = true if hand.all? { |card| card.suit == suit }
    end  
    flush
  end

  def straight?
    flag = true
    sorted_values = values.sort
    start_value = sorted_values[0]
    sorted_values.each_with_index do |value, idx|
      flag = false unless value == start_value + idx
    end
    flag
  end

  def three_of_a_kind?
    three = false
    values.each do |value|
      three = true if values.count(value) == 3
    end
    three
  end

  # I need to refactor this two evaluate 'pairs' not 'matching cards'
  # so that I can return the number of pairs.
  def pair_count
    matching_cards = 0
    values.each do |value|
      matching_cards += 1 if values.count(value) == 2
    end
    matching_cards
  end

  # When pair_count returns 'pairs' not 'matching cards' this will be
  # much more readable.
  def two_pair?
    return true if pair_count == 4
    false
  end

  def pair?
    return true if pair_count == 2
    false
  end
end

# Testing your class:

hand = PokerHand.new(Deck.new)

hand.print
puts hand.evaluate

# Danger danger danger: monkey
# patching for testing purposes.
class Array
  alias_method :draw, :pop
end

# Test that we can identify each PokerHand type.
hand = PokerHand.new([
  Card.new(10,      'Hearts'),
  Card.new('Ace',   'Hearts'),
  Card.new('Queen', 'Hearts'),
  Card.new('King',  'Hearts'),
  Card.new('Jack',  'Hearts')
])
puts hand.evaluate == 'Royal flush'

hand = PokerHand.new([
  Card.new(8,       'Clubs'),
  Card.new(9,       'Clubs'),
  Card.new('Queen', 'Clubs'),
  Card.new(10,      'Clubs'),
  Card.new('Jack',  'Clubs')
])

puts hand.evaluate == 'Straight flush'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Four of a kind'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Full house'

hand = PokerHand.new([
  Card.new(10, 'Hearts'),
  Card.new('Ace', 'Hearts'),
  Card.new(2, 'Hearts'),
  Card.new('King', 'Hearts'),
  Card.new(3, 'Hearts')
])
puts hand.evaluate == 'Flush'

hand = PokerHand.new([
  Card.new(8,      'Clubs'),
  Card.new(9,      'Diamonds'),
  Card.new(10,     'Clubs'),
  Card.new(7,      'Hearts'),
  Card.new('Jack', 'Clubs')
])
puts hand.evaluate == 'Straight'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(6, 'Diamonds')
])
puts hand.evaluate == 'Three of a kind'

hand = PokerHand.new([
  Card.new(9, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(8, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Two pair'

hand = PokerHand.new([
  Card.new(2, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(9, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Pair'

hand = PokerHand.new([
  Card.new(2,      'Hearts'),
  Card.new('King', 'Clubs'),
  Card.new(5,      'Diamonds'),
  Card.new(9,      'Spades'),
  Card.new(3,      'Diamonds')
])
puts hand.evaluate == 'High card'

# Output:

# 5 of Clubs
# 7 of Diamonds
# Ace of Hearts
# 7 of Clubs
# 5 of Spades
# Two pair
# true
# true
# true
# true
# true
# true
# true
# true
# true
# true
# true
# true

# The exact cards and the type of hand will vary with each run.
