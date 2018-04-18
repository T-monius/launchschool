# exercise2.rb

# What is a module? What is its purpose? How do we use them with our
# classes? Create a module for the class you created in exercise 1 and
# include it properly.

# A module is a set of behaviors and attributes that can be made 
# available to a class, but it itself can't be the basis of an object.
# Its purpose is to expand the attributes of a given class or classes.
# It is meant to be able to give attributes to multiple different 
# classes versus just being restricted to a single class. We can define
# a module then use the include method to include it in a class definition.

module ModulateSpeed
  def accelerate
    puts 'Speeding up.'
  end
  def coasting
    puts 'Reached cruising speed and maintaining...'
  end
  def brake
    puts 'Slowing down.'
  end
  def complete_stop
    puts 'Full stop.'
  end
end

class Car
  include ModulateSpeed
end

mercedes = Car.new
mercedes.accelerate
mercedes.coasting
mercedes.brake
mercedes.complete_stop
