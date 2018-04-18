# letter_counter_2.rb

# Modify the word_sizes method from the previous exercise to exclude
# non-letters when determining word size. For instance, the length of
# "it's" is 3, not 4.

# Understanding:
# Count only alpha characters

def word_sizes(str)
  str.split.group_by { |w| w.count('A-Za-z') }.transform_values do |v|
    v.count
  end
end

# Examples

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}
