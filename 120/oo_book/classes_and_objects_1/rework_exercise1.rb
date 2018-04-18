# rework_exercise1.rb

# Create a class called MyCar. When you initialize a new instance or
# object of the class, allow the user to define some instance variables
# that tell us the year, color, and model of the car. Create an
# instance variable that is set to 0 during instantiation of the
# object to track the current speed of the car as well. Create
# instance methods that allow the car to speed up, brake, and shut the
# car off.

class MyCar
  attr_accessor :year, :color, :model, :speed

  def initialize(y, c, m, s=0)
    self.year= y
    self.color= c
    self.model= m
    self.speed= s
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
end

merc = MyCar.new(2018, 'white', 'Mercedes')
puts "Your car is a #{merc.color} #{merc.year} #{merc.model}."
puts "You're currently moving at this speed #{merc.speed}."
merc.speed_up(20)
puts "You've sped up and are now going #{merc.speed}."
merc.speed_up(30)
puts "Continuing to go faster and now reached #{merc.speed}."
puts "Have to break approaching a turn..."
merc.brake(15)
puts "After slowing we're on a slower stretch at #{merc.speed}."
puts "Going to garage it up now..."
merc.shut_off
puts "You're going #{merc.speed} miles per hour in the garage."
