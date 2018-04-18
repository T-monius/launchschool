# q3.rb

# Building on the prior vehicles question, we now must also track a basic
# motorboat. A motorboat has a single propeller and hull, but otherwise
# behaves similar to a catamaran. Therefore, creators of Motorboat
# instances don't need to specify number of hulls or propellers. How would
# you modify the vehicles code to incorporate a new Motorboat class?

module Moveable
  attr_accessor :speed, :heading
  attr_writer :fuel_capacity, :fuel_efficiency

  def range
    @fuel_capacity * @fuel_efficiency
  end
end

class WheeledVehicle
  include Moveable

  def initialize(tire_array, km_traveled_per_liter, liters_of_fuel_capacity)
    @tires = tire_array
    self.fuel_efficiency = km_traveled_per_liter
    self.fuel_capacity = liters_of_fuel_capacity
  end

  def tire_pressure(tire_index)
    @tires[tire_index]
  end

  def inflate_tire(tire_index, pressure)
    @tires[tire_index] = pressure
  end
end

class Boat
    include Moveable

    def initialize(km_traveled_per_liter, liters_of_fuel_capacity)
    self.fuel_efficiency = km_traveled_per_liter
    self.fuel_capacity = liters_of_fuel_capacity
end

class Catamaran < Boat

  attr_accessor :propeller_count, :hull_count

  def initialize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
    super(km_traveled_per_liter, liters_of_fuel_capacity)

    # ... other code to track catamaran-specific data omitted ...
  end
end

class Motorboat < Boat
  # any pertinent Motorboat code (i.e. motor specs, etc.)
end

# The LS solution romoves everything from `catamaran` and moves the
# propeller related arguments to the superclass as well. It simply
# specifies how many propellers in the `motorboat` class since we know
# exactly how many it has. This is a small modification in understanding.
# 
