# exercise4.rb

# Print to the screen your method lookup for the classes that you have
# created.

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
end

class MyCar < Vehicle
  TRUNK = 'This vehicle has a trunk.'
end

class MyTruck < Vehicle
  HAULING_SPACE = ['Flat bed', 'Pick up means a bed', 'Hitch Set-up']

  include OffRoadable
end

puts "-----------------"
puts MyTruck.ancestors
puts "-----------------"
puts MyCar.ancestors
puts "-----------------"
puts Vehicle.ancestors
