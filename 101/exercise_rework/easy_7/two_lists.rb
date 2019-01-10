# two_lists.rb

def interleave(arr, arr1)
  interleaved_arr = []
  arr.each_with_index do |ele, idx|
    interleaved_arr << ele << arr1[idx]
  end
  interleaved_arr
end

def interleave_with_zip(arr, arr1)
  arr.zip(arr1).flatten
end
