# deck_of_cards.rb

# Using the Card class from the previous exercise, create a Deck class
# that contains all of the standard 52 playing cards. Use the following
# code to start your work:

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

# The Deck class should provide a #draw method to draw one card at
# random. If the deck runs out of cards, the deck should reset itself
# by generating a new set of 52 cards.

# Examples:

deck = Deck.new
drawn = []
5.times { drawn << deck.draw }
drawn.count { |card| card.rank == 5 } == 4
drawn.count { |card| card.suit == 'Hearts' } == 13

drawn2 = []
52.times { drawn2 << deck.draw }
puts drawn2.size
puts drawn != drawn2 # Almost always.

# Note that the last line should almost always be true; if you shuffle
# the deck 1000 times a second, you will be very, very, very old before
# you see two consecutive shuffles produce the same results. If you get
# a false result, you almost certainly have something wrong.
