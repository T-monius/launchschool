# get_middles_char.rb

def center_of(str)
  str_length = str.length
  midpoint = str_length / 2

  return str[midpoint] if str_length.odd?
  str[midpoint -1 ..midpoint]
end
