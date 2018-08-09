# reduce_method.rb

# Approach:
# Set counter to 0
# Pass two parameters to block at each iteration
# Increment the accmulator by blocks return value
# Return the accumulator

def reduce(arr, acc=0)
  counter = 0
  while counter < arr.size
    acc = yield(acc, arr[counter])
    counter += 1
  end

  acc
end

array = [1, 2, 3, 4, 5]

p reduce(array) { |acc, num| acc + num }                    # => 15
p reduce(array, 10) { |acc, num| acc + num }                # => 25
# p reduce(array) { |acc, num| acc + num if num.odd? }        # => NoMethodError: undefined method `+' for nil:NilClass

# Further Exploration:
# Allow the default to be a collection object not just an integer
#  - We can test the object type of the default
#   + `Object#class` does this
#   + Invoke a new instance of that class as the accumulator
# 

def reduce_fe(arr, default=0)
  return [] if arr.empty?
  counter = 0
  arr[0].class != Integer ? acc = arr[0].class.new : acc = default

  while counter < arr.size
    acc = yield(acc, arr[counter])
    counter += 1
  end

  acc
end

p reduce_fe(['a', 'b', 'c']) { |acc, value| acc += value }     # => 'abc'
p reduce_fe([[1, 2], ['a', 'b']]) { |acc, value| acc + value } # => [1, 2, 'a', 'b']
p reduce_fe([1, 2, 3, 4, 5]) { |acc, num| acc + num }
p reduce_fe([])
