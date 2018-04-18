# exercise1.rb

# Create a superclass called Vehicle for your MyCar class to inherit
# from and move the behavior that isn't specific to the MyCar class to
# the superclass. Create a constant in your MyCar class that stores
# information about the vehicle that makes it different from other
# types of Vehicles.

# Then create a new class called MyTruck that inherits from your
# superclass that also has a constant defined that separates it from
# the MyCar class in some way.

# Understanding:
# Put all shared functionality in vehicle
#   All previously initialized characteristics seem to pertain to any
#   vehicle (year, model, color, speed)
#   The exception could be gasmileage
# Create a unique constant in MyCar to store unique information
#   A unique characteristic could be passed into initialize as argument
#   What's unique to a car?

class Vehicle
  attr_reader :year, :model
  attr_accessor :color, :speed, :gasmileage

  def self.gasmileage(miles, gallons)
    miles/gallons
  end

  def initialize(y, c, m, s=0)
    @year= y
    self.color= c
    @model= m
    self.speed= s
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
end
