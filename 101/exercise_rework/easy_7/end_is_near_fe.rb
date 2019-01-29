# end_is_near_fe.rb

def middle_word(str)
  words = str.split(' ')
  return str if str.empty? || words.length == 1
  half = words.length / 2
  words[half]
end
