# grocery_list.rb

# Write a method which takes a grocery list (array) of fruits with
# quantities and converts it into an array of the correct number of each
# fruit.

def buy_fruit(list)
  new_list = []
  list.each { |arr| arr[1].times { new_list << arr[0] } }
  new_list
end

# Example:

puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
