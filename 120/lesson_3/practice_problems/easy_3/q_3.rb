# q_3.rb

# When objects are created they are a separate realization of a
# particular class.

# Given the class below, how do we create two different instances of
# this class, both with separate names and ages?

class AngryCat
  def initialize(age, name)
    @age  = age
    @name = name
  end

  def age
    puts @age
  end

  def name
    puts @name
  end

  def hiss
    puts "Hisssss!!!"
  end
end

cat = AngryCat.new(1, 'jolly')
cat1 = AngryCat.new(3, 'cranky')

cat.age
cat.name
cat.hiss

cat1.age
cat1.name
puts "I am so angry that I like to say:"
cat1.hiss
