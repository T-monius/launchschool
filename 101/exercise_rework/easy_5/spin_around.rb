# spin_around.rb

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end
