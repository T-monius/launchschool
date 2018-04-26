# nobility.rb

module Movable
  def walk
    "#{name} #{gait} forward."
  end
end

class Person
  include Movable

  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "strolls"
  end
end

class Noble < Person
  def initialize(name, title)
    super(name)
    @title = title
  end

  def title
    puts "#{@title}"
  end

  def walk
    "#{@title} #{super}"
  end

  private

  def gait
    'struts'
  end
end

class Cat
  include Movable

  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "saunters"
  end
end

class Cheetah
  include Movable

  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "runs"
  end
end

# Now that we have a Walkable module, we are given a new challenge.
# Apparently some of our users are nobility, and the regular way of
# walking simply isn't good enough. Nobility need to strut.

# We need a new class Noble that shows the title and name when walk is
# called:

byron = Noble.new("Byron", "Lord")
p byron.walk
# => "Lord Byron struts forward"

# We must have access to both name and title because they are needed
# for other purposes that we aren't showing here.

puts byron.name
# => "Byron"
byron.title
# => "Lord"
