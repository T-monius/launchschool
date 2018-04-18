# easy_2_q7.rb
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# We could have used either Array#concat or Array#push to add Dino to
# the family.

# How can we add multiple items to our array? (Dino and Hoppy)

arr = ['Dino', 'Hoppy']

arr.each { |character| flintstones << character }

flintstones.concat(arr)
