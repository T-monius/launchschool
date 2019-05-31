# problem7.rb

class Pet
  attr_accessor :name
  attr_reader :type

  def initialize(type, name)
    @type = type
    self.name = name
  end

  def to_s
    "a #{type} named #{name}"
  end
end

class Owner
  attr_reader :name

  def initialize(name)
    @name = name
    @pets = []
  end

  def number_of_pets
    pets.length
  end

  def add(pet)
    pets << pet
  end

  def to_s
    name
  end

  private
  attr_reader :pets
end

class Shelter

  def initialize
    @log = {}
  end

  def adopt(owner, pet)
    owner.add(pet)
    if log[owner]
      log[owner] << pet
    else
      log[owner] = [pet]
    end
  end

  def print_adoptions
    log.each do |owner, pets|
      puts "#{owner} has adopted the following pets:"
      pets.each { |pet| puts pet }
      puts
    end
  end

  private
  attr_reader :log
end

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
