# ddoble_char2.rn

def double_consonants(str)
  str.each_char.with_object('') do |char, new_str|
    if char.match?(/[a-z]/i) && !char.match?(/[aeiou]/i)
      new_str << char * 2
    else
      new_str << char
    end
  end
end
