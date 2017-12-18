# practice_problem_8.rb

# Using the each method, write some code to output all of the vowels from
# the strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], 
       third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each do |_, v|
  v.each {|w| puts w.scan(/[aeiou]/)}
end  
