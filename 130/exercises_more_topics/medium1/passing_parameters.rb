# passing_parameters.rb

# Understanding:
# - Existing method
# - Modify
# Input
#   - 1 argument
#     + Represents an array
# - Output
#   + Currently in the body of the `gather` method
# Desired Input
#   + same
# Desired Output
#   + Yield to the block
#   + Block determines output to the 'std out'
#   + Insignificant return value

items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items) if block_given?
  puts "Let's start gathering food."
end

gather(items) do |items|
    puts "#{items.join(', ')}"
  end
