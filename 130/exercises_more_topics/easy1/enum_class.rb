# enum_class.rb

class Tree
  include Enumerable

  def each
    'I\'m iterating'
  end
end

tree = Tree.new
puts tree.each
