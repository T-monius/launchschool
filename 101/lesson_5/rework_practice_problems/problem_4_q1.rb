# problem_4_q1.rb

# Understanding:
# The challnge is to find the value 3 in the collection and permanently
# increase it's value to 4.
# In the given data structure, there is a nested array whose second element
# is an array.
# The second element of the inner array is integer 3.
# My understanding of the task is to modify the collection itself.
# Must operate on the outer array first to get to the inner array where
# the integer value three is an element.
# Since transformation is to be performed, Array#map! is a valid option.
# I only want to implement a change if the element iterated on is an array.
# Can use Óbject#is_a? to determine if it's an array.
# If the element is not an array, the element should simply be returned.
# The if/else statement should return just the element 'el' in that case.

require 'pry'

arr1 = [1, [2, 3], 4]
# Somehow I'm getting nils in here even though the elements are properly
# iterated and operated on when I run the code in irb. I'm missing 
# something... 
=begin
arr1.map! do |el|
  # binding.pry
  if el.is_a?(Array)
    # binding.pry
    el.map! do |num|
      # binding.pry
      if num == 3
        num += 1
      else
        num
      end
      binding.pry
    end
  else
    # binding.pry
    el
  end
end
p arr1
=end

=begin
  
counter = 0

loop do
  break if counter == arr1.size
  if arr1[counter].is_a?(Array)
    counter1 = 0
    loop do
      break if counter1 == arr1[counter].size
      if arr1[counter][counter1] == 3
        arr1[counter][counter1] = 4
      end
      counter1 += 1
    end
  end
  counter += 1
end
  
=end

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
