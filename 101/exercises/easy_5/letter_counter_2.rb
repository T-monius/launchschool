# letter_counter_2.rb

# Modify the word_sizes method from the previous exercise to exclude
# non-letters when determining word size. For instance, the length of
# "it's" is 3, not 4.

# Understanding:
# When to modify word strings?
#   Can iterate over array
#   Or, can remove non-letters before splitting string

# Algorithm:
# Split string
# Map array calling 'cleanup' on elements
# Cleanup uses gsub to replace non-letters w/ ''

def cleanup(text)
  text.gsub(/[^a-z]/i, '')
end

def word_sizes(string)
  words = string.split.map! {|word| cleanup(word)}

  word_count = {}
  words.each do |word|
    if word_count.has_key?(word.length)
      word_count[word.length]+= 1
    else
      word_count[word.length] = 1
    end  
  end
  word_count
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}
