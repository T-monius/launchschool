# exercise1.rb

# Add a class method to your MyCar class that calculates the gas
# mileage of any car.

# Understanding:
# Gas mileage is how far a car can go per quantity
#   Miles per gallon
# Am I supposed to track the the gas consumption?
#   Create a tank
#   Tank has quantity
#   Track miles driven
#     Track time per speed
#     Or, have user input miles driven
#   Alternative to tank size and consumption
#     Hard code a gas mileage for the vehicle
#     Take the mileage as an input
#   Or, With tank
#     Ask user for miles driven *
#     And gas used              *

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
ride.gas_mileage = MyCar.gas_mileage(307, 13.6).round(2)
puts "Your fuel economy is #{ride.gas_mileage} miles per gallon."
# puts "Your car is a #{ride.year} #{ride.model}."
# puts "The car is #{ride.color}."
# puts ride.speed
# ride.speed_up
# puts ride.speed
# ride.speed_up(10)
# puts ride.speed
# ride.speed_up(50)
# puts ride.speed
# puts ride.brake
# ride.shut_off
# puts ride.speed
# puts "The car is now #{ride.spray_paint('silver')}."
