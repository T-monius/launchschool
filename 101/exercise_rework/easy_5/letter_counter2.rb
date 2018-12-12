# letter_counter2.rb

def word_sizes(str)
  str.split.each_with_object(Hash.new(0)) do |word, hsh|
    hsh[word.count('A-Za-z')] += 1
  end
end
