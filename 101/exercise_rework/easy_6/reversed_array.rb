# reversed_array.rb

def my_reverse!(arr)
  iterations = arr.size
  iterations.times do
    lead_item = arr.shift
    arr << lead_item
  end
  arr
end