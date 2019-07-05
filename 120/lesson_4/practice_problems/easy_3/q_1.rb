# q_1.rb

# If we have this code:

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

# What happens in each of the following cases:

case 1:

hello = Hello.new
hello.hi

# Answer:
# 'Hello' is outputted.

case 2:

hello = Hello.new
hello.bye

# Answer:
# NoMethodError is raised.
# undefined method error

case 3:

hello = Hello.new
hello.greet

# Answer:
# Error is outputted as the `greet` method from the parent class of Hello
# , Greeting, is called without the expected argument.
# ArgumentError

case 4:

hello = Hello.new
hello.greet("Goodbye")

# Answer:
# 'Goodbye' is outputted.

case 5:

Hello.hi

# Answer:
# An error is raised as `hi` is an instance method and thus cannot be
# called directly on the class.
