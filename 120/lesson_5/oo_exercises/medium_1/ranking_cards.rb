# ranking_cards.rb

# Update this class so you can use it to determine the lowest ranking
# and highest ranking cards in an Array of Card objects:

class Card
  VALUES = {'Ace' => 14, 'King' => 13, 'Queen' => 12, 'Jack' => 11,
            10 => 10, 9 => 9, 8 => 8, 7 => 7, 6 => 6, 5 => 5, 4 => 4,
            3 => 3, 2 => 2, 1 => 1}
  include Comparable
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def <=>(other_card)
    VALUES[rank] <=> VALUES[other_card.rank]
  end

  def to_s
    "#{rank} of #{suit}"
  end
end

# Examples:

cards = [Card.new(2, 'Hearts'),
         Card.new(10, 'Diamonds'),
         Card.new('Ace', 'Clubs')]
puts cards
puts cards.min == Card.new(2, 'Hearts')
puts cards.max == Card.new('Ace', 'Clubs')

cards = [Card.new(5, 'Hearts')]
puts cards.min == Card.new(5, 'Hearts')
puts cards.max == Card.new(5, 'Hearts')

cards = [Card.new(4, 'Hearts'),
         Card.new(4, 'Diamonds'),
         Card.new(10, 'Clubs')]
puts cards.min.rank == 4
puts cards.max == Card.new(10, 'Clubs')

cards = [Card.new(7, 'Diamonds'),
         Card.new('Jack', 'Diamonds'),
         Card.new('Jack', 'Spades')]
puts cards.min == Card.new(7, 'Diamonds')
puts cards.max.rank == 'Jack'

cards = [Card.new(8, 'Diamonds'),
         Card.new(8, 'Clubs'),
         Card.new(8, 'Spades')]
puts cards.min.rank == 8
puts cards.max.rank == 8
