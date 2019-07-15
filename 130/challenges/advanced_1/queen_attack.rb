# queen_attack.rb

class Queens
  attr_reader :white, :black

  def initialize(white: [0, 3], black: [7, 3])
    raise ArgumentError if white == black
    self.white = white
    self.black = black
  end

  def attack?
    # Can attack diagonally
    (black[0] - white[0]).abs == (black[1] - white[1]).abs ||
    # Can attack on the same row
    black[0] == white[0] ||
    # Can attack on the same column
    black[1] == white[1]
  end

  protected
  attr_writer :white, :black

  def generate_board
    x = 0
    y = 0
    loop do
      break if x > 7 || y > 7
    end
  end
end