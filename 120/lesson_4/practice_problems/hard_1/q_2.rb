# q_2.rb

# Ben and Alyssa are working on a vehicle management system. So far,
# they have created classes called Auto and Motorcycle to represent
# automobiles and motorcycles. After having noticed common information
# and calculations they were performing for each type of vehicle, they
# decided to break out the commonality into a separate class called
# WheeledVehicle. This is what their code looks like so far:

class Vehicle
  attr_accessor :speed, :heading

  def initialize(km_traveled_per_liter, liters_of_fuel_capacity)
    @fuel_efficiency = km_traveled_per_liter
    @fuel_capacity = liters_of_fuel_capacity
  end

  def range
    @fuel_capacity * @fuel_efficiency
  end
end

module WheeledVehicles
  @tires = [] # After re-reading the lesson on instance variable scope
              # I realize this would probably be a problem as it would be
              # a class instance variable and not an instance variable
              # since it is here initialized outside of an instance method.

  def tire_pressure(tire_index)
    @tires[tire_index]
  end

  def inflate_tire(tire_index, pressure)
    @tires[tire_index] = pressure
  end
end

class Auto < Vehicle
  include WheeledVehicles

  def initialize
    # 4 tires are various tire pressures
    super(50, 25.0)
    @tires = [30,30,32,32]
  end
end

class Motorcycle < Vehicle
  include WheeledVehicles

  def initialize
    # 2 tires are various tire pressures
    super(80, 8.0)
    @tires = [20,20]
  end
end

# Now Alan has asked them to incorporate a new type of vehicle into
# their system - a Catamaran defined as follows:

class Catamaran
  attr_accessor :propeller_count, :hull_count, :speed, :heading

  def initialize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
    super(km_traveled_per_liter, liters_of_fuel_capacity)
    self.propeller_count = num_propellers
    self.hull_count = num_hulls
  end
end

# This new class does not fit well with the object hierarchy defined so
# far. Catamarans don't have tires. But we still want common code to
# track fuel efficiency and range. Modify the class definitions and move
# code into a Module, as necessary, to share code among the Catamaran
# and the wheeled vehicles.

# Understanding:
# Find some common functionality amongs the vehicle classes that will
# can be shared amongst all types. Decide which aspects may be shared in
# module v. those to be shared through inheritance.
# Extract the fuel and distance related variables and methods to a module.
# Since some of these instances are used in the constructor method, how
# do I reference that information from a module.
# Since modules do not initialize objects, can they use attr_* methods?
# Perhaps, it would be easier to move the tire related infor out of the
# WheeledVehicles class since all of the other relevant information is
# pertinant to all vehicle types. 
#   The module could be WheeledVehicles
#   The superclass would just be vehicles.

# LS solution moved shared info from the catamaran and wheeled vehicles
# into a module `Moveable` which uses attr_* methods for shared setters
# and getters. Must use `self` to reference a setter that was set in the
# module in the initializers in order to properly set instance variables
# with the desired scope.
