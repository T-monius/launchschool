# combining_arrays.rb

def merge(arr, arr1)
  arr | arr1
end

def keep_iterating?(arr, arr1, idx)
  arr.fetch(idx, 'nope') != 'nope' || arr1.fetch(idx, 'nope') != 'nope'
end

def fe_merge(arr, arr1)
  new_arr = []
  idx = 0
  while keep_iterating?(arr, arr1, idx)
    element = arr.fetch(idx, 'nope') unless arr.fetch(idx, 'nope') == 'nope'
    element1 = arr1.fetch(idx, 'nope') unless arr1.fetch(idx, 'nope') == 'nope'
    new_arr << element unless new_arr.include?(element)
    new_arr << element1 unless new_arr.include?(element1)
    idx += 1
  end
  new_arr.sort
end
