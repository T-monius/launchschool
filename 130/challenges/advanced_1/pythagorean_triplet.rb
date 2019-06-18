# pythagorean_triplet.rb

class Triplet
  def initialize(a, b, c)
    self.a = a
    self.b = b
    self.c = c
  end

  def sum
    [a, b, c].sum
  end

  def product
    [a, b, c].reduce(:*)
  end

  def pythagorean?
    a**2 + b**2 == c**2
  end

  def self.where(min_factor: 0, max_factor:)
    (min_factor..max_factor).each_cons(3).with_object([]) do |arr, triplets|
      triplet = Triplet.new(arr[0], arr[1], arr[2])
      triplets << triplet if triplet.pythagorean?
    end
  end

  private

  attr_accessor :a, :b, :c
end
