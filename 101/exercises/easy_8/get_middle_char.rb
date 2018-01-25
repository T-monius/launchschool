# get_middle_char.rb

# Write a method that takes a non-empty string argument, and returns the 
# middle character or characters of the argument. If the argument has an
# odd length, you should return exactly one character. If the argument has
# an even length, you should return exactly two characters.

def center_of(str)
  middle = (str.length/2)
  if str.length.odd?
    str[middle]
  else
    str[(middle-1)..middle]
  end
end

# Examples:

puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'
