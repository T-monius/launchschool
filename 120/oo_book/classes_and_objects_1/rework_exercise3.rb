# rework_exercise3.rb

# You want to create a nice interface that allows you to accurately
# describe the action you want your program to perform. Create a
# method called spray_paint that can be called on an object and will
# modify the color of the car.

class MyCar
  attr_reader :year, :model
  attr_accessor :color, :speed

  def initialize(y, c, m, s=0)
    @year= y
    self.color= c
    @model= m
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

  def spray_paint(color)
    self.color= color
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
puts "=> Do you want to change the color of the car?"
response = gets.chomp.downcase
puts "Which color?" if response.start_with?('y')
new_color = gets.chomp if response.start_with?('y')
merc.spray_paint(new_color) if response.start_with?('y')
puts "The color of your Mercedes is #{merc.color}."
