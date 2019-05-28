# problem2.rb

module Drivable
  def self.drive
  end
end

class Car
  include Drivable

  def drive
    Drivable.drive
  end
end

bobs_car = Car.new
bobs_car.drive
