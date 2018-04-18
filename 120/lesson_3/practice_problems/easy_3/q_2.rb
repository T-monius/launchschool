# q_2.rb

# In the last question we had the following classes:

class Greeting
  def greet(message)
    puts message
  end
end

class Hello < Greeting
  def hi
    greet("Hello")
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end

# If we call Hello.hi we get an error message. How would you fix this?

# Answer:
# Assuming I wanted to maintain the instance method `hi`, I'd add a
# separate class method `hi` with `self.hi` in the header. Otherwise,
# I'd prefix `self` to the current `hi` method definition header.

# LS Expounds:
# You could define the hi method on the Hello class as follows:

class Hello
  def self.hi
    greeting = Greeting.new
    greeting.greet("Hello")
  end
end

# This is rather cumbersome. Note that we cannot simply call greet in
# the self.hi method definition because the Greeting class itself only
# defines greet on its instances, rather than on the Greeting class
# itself.

# I don't understand why the `Hello` class can't still inherit from
# `Greeting` 
=begin
I'm a bit confused about the statement 'the Greeting class itself only defines greet on its instances, rather than on the Greeting class itself' found in the solution. Is that to say that a class method cannot call an instance method that is defined in the same class or a parent class, or is that painting with too broad a brush.
```
class Greeting
  def greet(message)
    puts message
  end
end

class Hello < Greeting
  def hi
    greet("Hello")
  end

  def self.hi
    hi
  end
end

puts Hello.hi
```
I modified the `Hello` class a bit to test out what I think the statement is saying and got a `SystemStackError`. 
Although it shows that I can't call `Hello#hi` from within `self.hi`, I don't know if this is a proper example of what is going on.

I tried this to remove any confusion regarding part of the error had to do with inheriting from `Greeting` and trying to call one of it's instance methods `greet`:
```
class Hello
  def hi
    "Hello"
  end

  def self.hey
    hi
  end
end
=end