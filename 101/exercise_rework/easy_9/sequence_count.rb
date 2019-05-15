# sequence_count.rb

def sequence(cnt, startpoint)
  1.upto(cnt).with_object([]) { |num, arr| arr << startpoint * num }
end
