## Pet Shelter

### Understanding
- `Shelter` class
  + `Initialize`
    * Instantiate a log
  + `::adopt` class method
    * Associates pet with an owner
    * Updates a log
  + `::print_adoptions`
    * Prints the log
- `Owner` class
  + `Initialize`
    * Associates a name to the owner
    * Instantiate a collection of pets to empty
  + `name`
    * Returns the name of the owner
  + `number_of_pets`
    * Returns the number of pets associated with the owner
  + `+`
    * Add to the number of pets
    * Pets are collaborator objects
- `Pet` class
  + `Initialize`
    * Takes two arguments
    * pet type
    * name
### Task
- Consider the following code:

```ruby
butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."
```

Write the classes and methods that will be necessary to make this code run, and print the following output:

```
P Hanson has adopted the following pets:
a cat named Butterscotch
a cat named Pudding
a bearded dragon named Darwin

B Holmes has adopted the following pets:
a dog named Molly
a parakeet named Sweetie Pie
a dog named Kennedy
a fish named Chester

P Hanson has 3 adopted pets.
B Holmes has 4 adopted pets.
```

The order of the output does not matter, so long as all of the information is presented.

### Implementation
- 
