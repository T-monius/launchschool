# method_lookup2.rb

# Using the following code, determine the lookup path used when
# invoking cat1.color. Only list the classes and modules that Ruby will
# check when searching for the #color method.

class Animal
end

class Cat < Animal
end

class Bird < Animal
end

cat1 = Cat.new
p Cat.ancestors
cat1.color
#=> No method error

