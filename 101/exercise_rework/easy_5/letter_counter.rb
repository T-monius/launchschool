# letter_counter.rb

def word_sizes(str)
  str.split.each_with_object(Hash.new(0)) do |word, hsh|
    hsh[word.length] += 1
  end
end
