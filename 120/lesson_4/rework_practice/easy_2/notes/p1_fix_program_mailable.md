## Fix the Program - Mailable

### Understanding
- `Mailable` is a module
  + `print_address` is an instance method of the module
  + For classes to have access to the methods of the module, they must include it

### Task
- Correct the following program so it will work properly. Assume that the Customer and Employee classes have complete implementations; just make the smallest possible change to ensure that objects of both types have access to the print_address method.

```ruby
module Mailable
  def print_address
    puts "#{name}"
    puts "#{address}"
    puts "#{city}, #{state} #{zipcode}"
  end
end

class Customer
  attr_reader :name, :address, :city, :state, :zipcode
end

class Employee
  attr_reader :name, :address, :city, :state, :zipcode
end

betty = Customer.new 
bob = Employee.new
betty.print_address
bob.print_address
```

### Implementation
- Include the module in both `Customer` and `Employee`
