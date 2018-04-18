# exercise1.rb

# Create a class called MyCar. When you initialize a new instance or
# object of the class, allow the user to define some instance variables
# that tell us the year, color, and model of the car. Create an
# instance variable that is set to 0 during instantiation of the object
# to track the current speed of the car as well. Create instance methods
# that allow the car to speed up, brake, and shut the car off.

class MyCar
  attr_reader :year, :model
  attr_accessor :color, :speed

  def initialize(y, c, m, s=0)
    @year = y
    @model = m
    self.color = c
    self.speed = s
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
puts "Your car is a #{ride.year} #{ride.model}."
puts "The car is #{ride.color}."
puts ride.speed
ride.speed_up
puts ride.speed
ride.speed_up(10)
puts ride.speed
ride.speed_up(50)
puts ride.speed
puts ride.brake
ride.shut_off
puts ride.speed
puts "The car is now #{ride.spray_paint('silver')}."
