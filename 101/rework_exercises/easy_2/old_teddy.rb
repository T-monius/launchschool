# old_teddy.rb

# Build a program that randomly generates and prints Teddy's age. To get
# the age, you should generate a random number between 20 and 200.

def greeting(name='Teddy')
  puts "#{name} is #{rand(20..200)} years old!"
end

puts "Please enter a name:"
name = gets.chomp

name != '' ? greeting(name) : greeting

# Example Output

# Teddy is 69 years old!
