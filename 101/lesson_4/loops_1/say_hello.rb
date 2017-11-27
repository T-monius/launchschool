# say_hello.rb

# Modify the code below so "Hello!" is printed 5 times.

say_hello = true
counter = 0

while say_hello
  counter += 1
  puts 'Hello!'
  say_hello = false if counter == 5
end
