# passing_parameters3.rb

# Understanding:
# Input
#   - Array
# Process
#   - Output something
#   - Yield to the block
#     + Array passed
#   - Output something to the 'std out'
# Output
#   - Returns `nil` from the `puts` method call

items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

# 1)
#   - Understanding
#     + Apparently have to use the splat operator to separate
#       out the array elements prior to referencing them in
#       the body of the block.
#     + The splat will group items from the back of a list,
#       but will it group the front and then back?
puts "1-------------------------"
gather(items) do |*firs_items, last_item|
  puts firs_items.join(', ')
  puts last_item
end

# 2)
# Understanding:
#   - Can I put the splat in the middle of references to the
#     first and last items of an array?

puts "2-------------------------"
gather(items) do |first_item, *middle, last_item|
  puts first_item
  puts middle.join(', ')
  puts last_item
end

# 3)
# Understanding:

puts "3-------------------------"
gather(items) do | first_item, *last_items|
  puts first_item
  puts last_items.join(', ')
end

# 4)
# Understanding:
# 
puts "4-------------------------"
gather(items) do | item, item1, item2, item3|
  puts "#{item}, #{item1}, #{item2}, #{item3}"
end
