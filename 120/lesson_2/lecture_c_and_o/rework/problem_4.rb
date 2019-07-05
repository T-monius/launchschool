# problem_4.rb

class Person
  attr_accessor :first_name, :last_name

  def initialize(full_name)
    self.name = full_name
  end

  def name=(name)
    parts = name.split
    @first_name = parts.first
    @last_name = parts.size > 1 ? parts.last : ''
  end

  def name
    "#{first_name} #{last_name}".strip
  end

  def ==(other_person)
    self.name == other_person.name
  end
end

bob = Person.new('Robert Smith')
rob = Person.new('Robert Smith')

puts bob == rob
