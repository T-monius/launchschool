## Complete the Program - Cats!

### Understanding
- The `Pet` class is defined with a constructor that takes to parameters
  + `name`
  + `age`
  + The parameters are assigned as state to instance variables by the same name
  + The `Cat` class inherits from the `Pet`
    * The constructor takes three parameters v. two
    * Third a color description 

### Task
- Consider the following program.

```ruby
class Pet
  def initialize(name, age)
    @name = name
    @age = age
  end
end

class Cat < Pet
end

pudding = Cat.new('Pudding', 7, 'black and white')
butterscotch = Cat.new('Butterscotch', 10, 'tan and white')
puts pudding, butterscotch
```

Update this code so that when you run it, you see the following output:

```
My cat Pudding is 7 years old and has black and white fur.
My cat Butterscotch is 10 years old and has tan and white fur.
```

### Implementation
- Call `super` for the first two variables of the cat constructor
- Assign the third to a `color` instance variable
- Define `to_s` to output the given string with descriptors interpolated
