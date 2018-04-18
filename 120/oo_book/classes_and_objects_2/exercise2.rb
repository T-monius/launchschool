# exercise2.rb

# Override the to_s method to create a user friendly print out of your
# object.

class MyCar
  attr_reader :year, :model
  attr_accessor :color, :speed, :gas_mileage

  def self.gas_mileage(mi, gallons)
    mi/gallons
  end

  def initialize(y, c, m, s=0)
    @year = y
    @model = m
    self.color = c
    self.speed = s
  end

  def to_s
    "I am a #{self.year} #{self.model} that is #{self.color} :-) !"
  end

  def spray_paint(str)
    self.color = str
  end

  def speed_up(int=5)
    self.speed += int
  end

  def brake(int=5)
    self.speed -= int
  end

  def shut_off
    self.speed = 0
  end
end

ride = MyCar.new(2001, 'grey', 'Chevy Cavalier')
puts ride
