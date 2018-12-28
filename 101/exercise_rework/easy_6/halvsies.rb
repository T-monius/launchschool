# halvsies.rb

def halvsies(arr)
  input_length = arr.length
  half = arr.length / 2
  if input_length.odd?
    first_arr = arr.shift(half + 1)
  else
    first_arr = arr.shift(half)
  end
  [first_arr, arr]
end
