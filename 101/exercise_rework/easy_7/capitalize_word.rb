# capitalize_word.rb

def word_cap(str)
  str.split.map { |word| word.capitalize }.join(' ')
end
