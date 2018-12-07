# letter_swap.rb

def swap(str)
  str.split.map do |word|
    word[0], word[-1] = word[-1], word[0]
    word
  end.join(' ')
end
