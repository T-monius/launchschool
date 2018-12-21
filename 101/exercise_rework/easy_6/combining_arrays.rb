# combining_arrays.rb

def merge(arr, arr1)
  arr | arr1
end

def fe_merge(arr, arr1)
  [arr, arr1]
end

p fe_merge([1, 3, 5], [3, 6, 9])
