# reverse_engineering.rb

# Write a class that will display the expected outputs when the
# following code is run:

class Transform
  def initialize(str)
    @str = str
  end

  def uppercase
    @str.upcase
  end

  def self.lowercase(str1)
    str1.downcase
  end
end

my_data = Transform.new('abc')
puts my_data.uppercase
puts Transform.lowercase('XYZ')

# Expected outputs:
# => ABC
# => xyz
