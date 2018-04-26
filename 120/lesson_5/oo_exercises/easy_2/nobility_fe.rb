# nobility_fe.rb

# Further Exploration
# This exercise can be solved in a similar manner by using inheritance;
# a Noble is a Person, and a Cheetah is a Cat, and both Persons and
# Cats are Animals. What changes would you need to make to this program
# to establish these relationships and eliminate the two duplicated
# #to_s methods?

# Is to_s the best way to provide the name and title functionality we
# needed for this exercise? Might it be better to create either a
# different name method (or say a new full_name method) that
# automatically accesses @title and @name? There are tradeoffs with
# each choice -- they are worth considering.

module Walkable
  def walk
    "#{self} #{gait} forward"
  end
end

class Mammals
  attr_reader :name

  include Walkable

  def initialize(name)
    @name = name
  end

  def to_s
    name
  end
end

class Person < Mammals

  private

  def gait
    "strolls"
  end
end

class Cat

  private

  def gait
    "saunters"
  end
end

class Cheetah < Mammals

  private

  def gait
    "runs"
  end
end

class Noble < Mammals
  attr_reader :title

  def initialize(name, title)
    @title = title
    @name = name
  end

  def to_s
    "#{title} #{name}"
  end

  private

  def gait
    "struts"
  end
end

byron = Noble.new("Byron", "Lord")
p byron.walk

# Explanation of alternative to #to_s
# Because the only class that would use a full_name instance method over
# a call to #to_s would be the Nobility class, I believe the advantage
# of the current code is the brevity. A call to #to_s allows a single
# overriding of the inherited #to_s from the Mammals class only in the
# case of the Noble class.
# Modifying the approach to invoke a full_name instance method in the
# Walkable module would limit the flexibility of the module as a call
# to #to_s is presumably more global. A full_name method in the Mammal
# class or the other three subclasses would essentially only return
# the singular name, so the DRY approach is a simple call to #to_s.
