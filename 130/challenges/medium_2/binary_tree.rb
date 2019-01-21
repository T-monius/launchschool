# binary_tree.rb
require 'pry'

class Bst
  include Comparable
  attr_reader :data, :right, :left

  def initialize(value)
    @data = value
  end

  def insert(value)
    value.instance_of?(Bst) ? new_data = value : new_data = Bst.new(value)
    if new_data <= self
      # binding.pry
      left ? left.insert(new_data) : self.left = new_data
    else
      # binding.pry
      right ? right.insert(new_data) : self.right = new_data
    end
  end

  def each
    
  end

  def <=>(other_bst)
    data <=> other_bst.data
  end

  protected
  attr_writer :right, :left
end

# four = Bst.new(4)
# p four
# four.insert(5)
# p four
# four.insert(3)
# p four
# four.insert(2)
# p four
# p four.left.left.data
