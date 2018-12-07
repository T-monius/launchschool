# ascii_value.rb

def ascii_value(str)
  str.chars.map(&:ord).sum
end
