# always_return_negative.rb

def negative(int)
  return int if int == 0
  return int if int < 0
  -int
end
