# problem_2.rb

# Create a new class called Cat, which can do everything a dog can,
# except swim or fetch. Assume the methods do the exact same thing.
# Hint: don't just copy and paste all methods in Dog into Cat; try to
# come up with some class hierarchy.

# Understanding:
# Dogs and Cats share a lot of behavior
# Extract behavior from the Dog method to a 'Pets' class or a module

class Pet
  def speak(special_sound='animal sound!')
    "#{special_sound}"
  end

  def run
    'running!'
  end

  def jump
    'jumping!'
  end

end

class Dog < Pet
  def speak(dog_sound='bark!')
    super
  end

  def swim
    'swimming!'
  end

  def fetch
    'fetching!'
  end
end

class Bulldog < Dog
  def swim
    "can't swim!"
  end
end

class Cat < Pet
    def speak(cat_sound='meow!')
    super
  end
end

spot = Dog.new
puts spot.speak

fluffy = Cat.new
puts fluffy.speak

pete = Pet.new
kitty = Cat.new
dave = Dog.new
bud = Bulldog.new

puts pete.run                # => "running!"
puts pete.speak              # => NoMethodError

puts kitty.run               # => "running!"
puts kitty.speak             # => "meow!"
# kitty.fetch             # => NoMethodError

puts dave.speak              # => "bark!"

puts bud.run                 # => "running!"
puts bud.swim                # => "can't swim!"
