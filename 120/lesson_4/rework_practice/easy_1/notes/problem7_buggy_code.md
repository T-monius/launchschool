## Buggy Code - Car Mileage

### Understanding
- The intent of the `increment_mileage` method is to add input miles to the miles of the `Car` object
  + A setter exists through the accesor
  + The setter must be referenced in order to set the value to the instance variable `@mileage`

### Task
- Fix the following code so it works properly:

```ruby
class Car
  attr_accessor :mileage

  def initialize
    @mileage = 0
  end

  def increment_mileage(miles)
    total = mileage + miles
    mileage = total
  end

  def print_mileage
    puts mileage
  end
end

car = Car.new
car.mileage = 5000
car.increment_mileage(678)
car.print_mileage  # should print 5678
```

### Implementation
- Reference the `@mileage` instance variable initialized in the constructor in the instance methods `increment_mileage`
  + Prepend `self` in order to do so
