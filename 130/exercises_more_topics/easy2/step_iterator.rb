# step_iterator.rb

# Understanding:
#   - `Range#step` iterates according to a value inputted
#     > Each sequential iteration is a separation of the input
#       value from the previous.
#     > If the first iteration is at 1, and the step is 4 then
#       the next iteration will be at 5
#   - Iterate based on three arguments
#     > A starting value
#     > A step
#     > An ending value
#   - Return value
#     > It seems to me that a reasonable return value would be
#       the result of the block at each iteration stored in a
#       range.
#     > This would be like a 'step/sequential' version of map
#     > Part of the reason I think this is appropriate is that
#       I can't imagine more of a use for it. 
#       + The return value will not be significant if based
#         on our one example.
#       + If our example were the only baseline, I'd say return
#         `nil`
#       + Since the origibal returns the original array, this one
#         may sensibly return every element from the start to
#         the endpoint. 
#         > It's hard to know what the intent of this method
#           is, but that would most reasonably mimic the original.
#         > If I'm focusing only on side-effect, however, I'd say
#           return just `nil`.

# Approach:
#   - Iterate
#     > Can use each with index and call next if index not
#       equivalent to the step
#     > A loop seems more efficient than each with next
#       + Set a variable to start
#       + Break if at endpoint
#       + Yield current value to the block
#       + Increment variable by step
#     > Return `nil`

def step(start, endpoint, step)
  value = start
  loop do
    break if value > endpoint

    yield(value) if block_given?

    value += step
  end
  nil
end

step(1, 10, 3) { |value| puts "value = #{value}" }
