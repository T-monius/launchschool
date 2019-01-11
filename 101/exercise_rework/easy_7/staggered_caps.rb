# staggered_caps.rb

def staggered_case(str)
  staggered = ''
  str.each_char.with_index do |char, idx|
    idx.even? ? staggered << char.upcase : staggered << char.downcase
  end
  staggered
end
