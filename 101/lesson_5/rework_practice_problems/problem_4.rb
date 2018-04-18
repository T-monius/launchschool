# For each of these collection objects where the value 3 occurs,
# demonstrate how you would change this to 4.

require 'pry'

arr1 = [1, [2, 3], 4]
counter = 0

arr1.each do |el|
  # binding.pry
  if el.is_a?(Array)
    # binding.pry
    el.map! { |num| num == 3 ? num += 1 : num }
  else
    # binding.pry
    el
  end
end
p arr1


arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
arr2.map! { |ele| ele == 3 ? ele += 1 : ele }
p arr2

hsh1 = {first: [1, 2, [3]]}
hsh1.transform_values do |v|
  v.map! do |el|
    if el.is_a?(Array)
      el.map { |element| element += 1 }
    else
      el
    end
  end
end
puts hsh1

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
hsh2[['a']][:a][2] = 4
puts hsh2
