# clean_words.rb

def cleanup(str)
  str.tr_s('^a-z', ' ')
end
