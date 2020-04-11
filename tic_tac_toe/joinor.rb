# joinor.rb

def joinor(arr, separator = ', ', last_sep = 'or')
  if arr.size == 2
    arr.join(separator)
  elsif arr.size > 2
    str = ' ' << last_sep << ' ' << arr.pop.to_s
    str.prepend(arr.join(separator))
  elsif arr.size == 1
    arr[0].to_s
  else
    ''
  end
end

# Write a method called joinor that will produce the following result:

puts joinor([1])                      # => "1"
puts joinor([1, 2])                   # => "1 or 2"
puts joinor([1, 2, 3])                # => "1, 2, or 3"
puts joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
puts joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"
