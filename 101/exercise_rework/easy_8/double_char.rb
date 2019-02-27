# double_char.rb

def repeater(str)
  str.each_char.with_object('') do |char, str1|
    str1 << char * 2
  end
end
