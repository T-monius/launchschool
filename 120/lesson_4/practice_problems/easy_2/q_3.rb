# q_3.rb

# How do you find where Ruby will look for a method when that method is
# called? How can you find an object's ancestors?

module Taste
  def flavor(flavor)
    puts "#{flavor}"
  end
end

class Orange
  include Taste
end

class HotSauce
  include Taste

  def ancestors
    HotSauce.ancestors
  end
end

# What is the lookup chain for Orange and HotSauce?

# Answer:
# The method lookup chain is revelead through the method Object#ancestors
# which will show the order in which Ruby searches the class from which an
# object inherits. The more recently inherited classes are given preference
# over the previous classes meaning a method with the same name will be
# given precedence from the most recently inherited class or module.
# The class method ancestors can be called on a class to reveal its
# lookup chain/ancestors.

hotsauce = HotSauce.new

puts Orange.ancestors
puts "-----------"
puts HotSauce.ancestors
puts "-----------"
puts hotsauce.ancestors
