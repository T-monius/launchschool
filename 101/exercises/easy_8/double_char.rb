# double_char.rb

# Write a method that takes a string, and returns a new string in which
# every character is doubled.

=begin
def repeater(str)
  new_str = ''
  str.chars.each do |char|
    new_str << char + char
  end
  new_str
end
=end

def repeater(str)
  str.chars.each_with_object('') {|char, str| str << char * 2}
end

# Examples:

puts repeater('Hello') == "HHeelllloo"
puts repeater("Good job!") == "GGoooodd  jjoobb!!"
puts repeater('') == ''
