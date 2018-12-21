# reversed_array2.rb

def my_reverse(arr)
  arr.reverse_each.with_object([]) do |ele, new_arr|
    new_arr << ele
  end
end
