## Fix the Program - Drivable

### Understanding
- `Drivable` is a module
  + `Drivable.drive` is a module method
  + The module is currently included in `Car`
- A `Car` object is meant to call `Drivable.drive` from an instance method

### Task
- Correct the following program so it will work properly. Assume that the Car class has a complete implementation; just make the smallest possible change to ensure that cars have access to the drive method.

```ruby
module Drivable
  def self.drive
  end
end

class Car
  include Drivable
end

bobs_car = Car.new
bobs_car.drive
```

### Implementation
- Create an instance method that invokes the module method in it's definition
