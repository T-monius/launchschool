# Write a method that takes one argument, a string, and returns
# the same string with the words in reverse order.

# Understanding:
# The method will take an argument in the form of a string whose
# words will be split and stored in an array. The array will then 
# be reversed. The reversed array will have each called on it and
# have its words concatenated into a new string variable which
# will be returned.

def reverse_sentence(sentence)
  if sentence == ''
    return ''
  end
  array = sentence.split
  backwards = array.reverse

  new_string = ''
  backwards.each {|word| 
    new_string += ' ' 
    new_string += word}  
  return new_string[1..-1]
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'