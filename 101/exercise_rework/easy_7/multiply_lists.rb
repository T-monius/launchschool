# multiply_lists.rb

def multiply_list(arr, arr1)
  arr.zip(arr1).map { |zipped_arr| zipped_arr.reduce(:*) }
end

def multiply_list1(arr, arr1)
  arr.map.with_index { |int, idx| int * arr1[idx] }
end
