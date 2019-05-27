## Refactoring Vehicles

### Understanding
- The three classes all have `make` and `model` instance variables
- All have a common `to_s`
- `wheels` are unique
- `payload` instance variable unique on `Truck` class

### Task
- Consider the following classes:

```ruby
class Car
  attr_reader :make, :model

  def initialize(make, model)
    @make = make
    @model = model
  end

  def wheels
    4
  end

  def to_s
    "#{make} #{model}"
  end
end

class Motorcycle
  attr_reader :make, :model

  def initialize(make, model)
    @make = make
    @model = model
  end

  def wheels
    2
  end

  def to_s
    "#{make} #{model}"
  end
end

class Truck
  attr_reader :make, :model, :payload

  def initialize(make, model, payload)
    @make = make
    @model = model
    @payload = payload
  end

  def wheels
    6
  end

  def to_s
    "#{make} #{model}"
  end
end
```

Refactor these classes so they all use a common superclass, and inherit behavior as needed.

### Implementation
- Create a class `Vehicle` to hold common instance variables and `to_s`
-  `initialize`
  + Extract in `Car` and `Motorcycle` classes
  + Re-write in `Truck`
- `wheels`
  + Maintain in the three subclasses


 ```ruby
  module wheels
    attr_writer :wheels
    
    def wheels
      @wheels = 1
    end
  end
``` 
