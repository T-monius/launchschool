# select_fruit.rb

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(input_hash)
  return_hash = {}
  hash_keys = input_hash.keys
  type = 'Fruit'
  counter = 0

  loop do
    current_key = hash_keys[counter]
    return_hash[current_key]= type if input_hash[current_key] == type
    counter += 1
    # LS solution points out that the break should be at the top in
    # case the input is an empty hash.
    break if counter == hash_keys.size
  end
  return_hash
end

puts select_fruit(produce)
