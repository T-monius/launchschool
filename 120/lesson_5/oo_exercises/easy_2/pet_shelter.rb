# pet_shelter.rb

class Shelter
  attr_accessor :owners
  def initialize
    self.owners = {}
  end

  def update_owner_record(owner_name, pet)
    if owners[owner_name]
      owners[owner_name] << "#{pet}"
    else
      owners[owner_name] = ["#{pet}"] 
    end    
  end

  def give_owner_pet(owner, pet)
    owner.pets << pet
  end

  def adopt(owner, pet)
    update_owner_record(owner.name, pet)
    give_owner_pet(owner, pet)
  end

  def print_adoptions
    owners.each do |owner, pets|
      puts "#{owner} has adopted the following pets:"
      pets.each { |pet| puts pet }
      puts '----------------------------------------'
    end
  end
end

class Pet
  attr_reader :type, :name

  def initialize(type, name)
    @name = name
    @type = type
  end

  def to_s
    "a #{type} named #{name}"
  end
end

class Owner
  attr_reader :name, :pets

  def initialize(name)
    @name = name
    @pets = []
  end

  def number_of_pets
    pets.size
  end

  def to_s
    "#{name}"
  end
end

# Consider the following code:

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
puts '----------------------------------'
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."
puts '----------------------------------'
phanson.pets.each { |pet| puts pet }

# Write the classes and methods that will be necessary to make this
# code run, and print the following output:

# P Hanson has adopted the following pets:
# a cat named Butterscotch
# a cat named Pudding
# a bearded dragon named Darwin

# B Holmes has adopted the following pets:
# a dog named Molly
# a parakeet named Sweetie Pie
# a dog named Kennedy
# a fish named Chester

# P Hanson has 3 adopted pets.
# B Holmes has 4 adopted pets.

# The order of the output does not matter, so long as all of the
# information is presented.
