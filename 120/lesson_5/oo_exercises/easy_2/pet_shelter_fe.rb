# pet_shelter_fe.rb

class Shelter
  attr_accessor :owners, :unadopted_pets
  def initialize
    self.owners = {}
    self.unadopted_pets = []
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

  def add_pet(pet)
    unadopted_pets << pet
  end

  def print_adoptions
    owners.each do |owner, pets|
      puts "#{owner} has adopted the following pets:"
      pets.each { |pet| puts pet }
      puts '----------------------------------------'
    end
  end

  def print_unadopted_pets
    unadopted_pets.each { |pet| puts pet }
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

# Suppose the shelter has a number of not-yet-adopted pets, and wants
# to manage them through this same system. Thus, you should be able to
# add the following output to the example output shown above:

# The Animal Shelter has the following unadopted pets:
# a dog named Asta
# a dog named Laddie
# a cat named Fluffy
# a cat named Kat
# a cat named Ben
# a parakeet named Chatterbox
# a parakeet named Bluebell
#    ...
new_pets = [ Pet.new('dog', 'Asta'), Pet.new('dog', 'Laddie'),
             Pet.new('cat', 'Fluffy'), Pet.new('cat', 'Kat'),
             Pet.new('cat', 'Ben'), Pet.new('parakeet', 'Chatterbox'),
             Pet.new('parakeet', 'Bluebell') ]
new_pets.each { |pet| shelter.add_pet(pet) }

puts 'The Animal Shelter has the following unadopted pets:'
shelter.print_unadopted_pets

# P Hanson has 3 adopted pets.
# B Holmes has 4 adopted pets.
# The Animal shelter has 7 unadopted pets.
# Can you make these updates to your solution? Did you need to change your class system at all? Were you able to make all of your changes without modifying the existing interface?
