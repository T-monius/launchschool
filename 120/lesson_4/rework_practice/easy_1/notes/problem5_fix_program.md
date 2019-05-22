## Fix the Program - Flight Data

### Understanding
- The class initializes a database
  + Stores a flight number
  + Has a public accessor
  + Perhaps the `database_handle` should be private so as not to be changed in the futute?

### Task
- Consider the following class definition:

```ruby
class Flight
  attr_accessor :database_handle

  def initialize(flight_number)
    @database_handle = Database.init
    @flight_number = flight_number
  end
end
```

There is nothing technically incorrect about this class, but the definition may lead to problems in the future. How can this class be fixed to be resistant to future problems?

### Implementation
- Delete the accessor or make it private
