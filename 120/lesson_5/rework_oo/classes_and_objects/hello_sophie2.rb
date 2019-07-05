# hello_sophie1.rb

class Cat
  def initialize(name)
    @name = name
    greet
  end

  def greet
    puts "Hello! My name is #{@name}!"
  end
end

kitty = Cat.new('Sophie')
