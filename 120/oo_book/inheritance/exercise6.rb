# exercise6.rb

# Write a method called age that calls a private method to calculate
# the age of the vehicle. Make sure the private method is not
# available from outside of the class. You'll need to use Ruby's
# built-in Time class to help.

# Understanding:
# Private method 'age'
#   Calculates age of vehicle
#   By age, the vehicles time of initialization is referenced not it's
#   year.
#   Unless, the calculation is based on the the current time minus the 
#   vehicles year...

module OffRoadable
  def bouldering
    puts "Your now using your high clearance off road."
  end

  def wench
    puts 'Use that wench to get out of a tough spot.'
  end
end

class Vehicle
  @@number_of_vehicles = 0

  attr_reader :year, :model
  attr_accessor :color, :speed, :gasmileage

  def initialize(y, c, m, s=0)
    @@number_of_vehicles += 1 
    @year= y
    self.color= c
    @model= m
    self.speed= s
  end

  def self.number_of_vehicles
    puts "There are #{@@number_of_vehicles} vehicles out there."
  end

  def self.gasmileage(miles, gallons)
    miles/gallons
  end

  def to_s
    "You drive a #{year} #{model} that is #{color}."
  end

  def speed_up(mph=5)
    self.speed += mph
  end

  def brake(mph=5)
    self.speed -= mph
  end

  def shut_off
    self.speed = 0
  end

  def spray_paint(color)
    self.color= color
  end

  private

  def age
    Time.now.year - year
  end
end

class MyCar < Vehicle
  TRUNK = 'This vehicle has a trunk.'
end

class MyTruck < Vehicle
  HAULING_SPACE = ['Flat bed', 'Pick up means a bed', 'Hitch Set-up']

  include OffRoadable
end

tacoma = MyTruck.new(2018, 'white', 'Mercedes')
puts tacoma.age
