# q2_ls.rb

# We can move anything shared with the catamaran and wheeled vehicles into
# a new module (let's call Moveable) that we include in both individual
# classes.

# Also, in the initializers of the classes that include the Moveable
# module, we must reference the setter methods that have been defined in
# Moveable (the fuel capacity and efficiency) using self. notation.
# Otherwise, this would be interpreted as setting local variables that
# will lose their scope as soon as the initializers return.

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

class Catamaran
  include Moveable

  attr_accessor :propeller_count, :hull_count

  def initialize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
    self.fuel_efficiency = km_traveled_per_liter
    self.fuel_capacity = liters_of_fuel_capacity

    # ... other code to track catamaran-specific data omitted ...
  end
end

# The definitions of Auto and Motorcycle can remain unchanged, since they
# both inherit from WheeledVehicle and we've moved any code shared between
# Catamaran and WheeledVehicles to the Moveable module.
