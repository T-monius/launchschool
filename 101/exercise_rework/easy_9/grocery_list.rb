# grocery_list.rb

def buy_fruit(arr)
  arr.each_with_object([]) do |fruit_count, arr1|
    fruit_count[1].times { arr1 << fruit_count[0] }
  end
end
