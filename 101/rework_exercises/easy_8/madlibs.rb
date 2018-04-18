# Madlibs

# Mad libs are a simple game where you create a story template with
# blanks for words. You, or another player, then construct a list of
# words and place them into the story, creating an often silly or funny
# story as a result.

# Create a simple mad-lib program that prompts for a noun, a verb, an
# adverb, and an adjective and injects those into a story that you
# create.

# Understanding:
# Writing a Program
# Madlib breaks sentences down into word types and outputs them
# Ask user for the needed word types
#   Loop until all the needed word types are satisfied
#   Validation?
#   Store word types
#     Each word type can be a separate variable
#     Or, the word type could be associated with an index
#     Or, the word type could be associated with a hash key
# Output word types in a sentence
#   Interpolate words from data type used for storage into a string.

# Algorithm:
# Set array to the needed word types
# Iterate over the array of word types moving on to the next word as long
# as there was an input.
#   Push the word type and it's associated word to a hash
# Puts the sentence with the values from hash interpolated

word_types = [:noun, :verb, :adjective, :adverb]
mad_dictionary = Hash.new(0)
counter = 0

loop do
  break if counter == word_types.length

  word = ''
  loop do
    puts "Please give me a #{word_types[counter]}: "
    word = gets.chomp
    break if !word.empty?
  end
  mad_dictionary[word_types[counter]] = word
  counter += 1
end

puts "Do you #{mad_dictionary[:verb]} your #{mad_dictionary[:adjective]}" \
     " #{mad_dictionary[:noun]} #{mad_dictionary[:adverb]}?"

# Example

# Enter a noun: dog
# Enter a verb: walk
# Enter an adjective: blue
# Enter an adverb: quickly

# Do you walk your blue dog quickly? That's hilarious!
