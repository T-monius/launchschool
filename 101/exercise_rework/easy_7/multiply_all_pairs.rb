# multiply_all_pairs.rb

def multiply_all_pairs(arr, arr1)
  arr.product(arr1).map { |product_array| product_array.reduce(:*) }.sort
end
