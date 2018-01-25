# longest_sentence.rb

# Write a program that reads the content of a text file and then
# prints the longest sentence in the file based on number of words.
# Sentences may end with periods (.), exclamation points (!), or
# question marks (?). Any sequence of characters that are not spaces
# or sentence-ending characters should be treated as a word. You
# should also print the number of words in the longest sentence.

# Understanding:
# Call the program from the command line with the other file as a
# command line argument?
# Have the .txt file stored in the same directory and read it into the 
# program calling only the program from the command line?
# An earlier lesson had a program call in messages from a text file.
# THIS IS NOT AS EASY AS SUPPOSED BECAUSE NOT EVERY SENTENCE CAN BE
# SPLIT SIMPLY WITH '.' (Can't just split into array)
# Set longest_sentence variable to empty string
# Set current_sentence variable to empty string
# Set next_sentence variable to empty string
# Open the text file
# Read each_line of the file
#   if line has a sentence splitter, push everything prior to current
#   _sentence variable
#   everything else goes to next_sentence variable
#     If current_sentence longer than longest_sentence 
#       replace
#     clear current_string
#     Iterate over next_sentence if not empty string
#       Check next_sentence for splitter before continuing iteration
#       repeat pushing to current_sentence until next_sentence empty
#   else push line to current_sentence
#   continue iterating until file exhausted
# puts longest_count variable

# Method to analyze lines
#   Method needs to take a line as a parameter.
#   Should it modify external variables or return an array
#   of relevant variables?
#   Can use String#clear to modify current_sentence
#   Can push to string variables << in a mutating fashion
#   THE METHOD WILL HAVE SIDE EFFECTS WITH NO SIGNIFICANT RETURN

current_sentence = ''
next_sentence = ''
longest_sentence = ''
text_file = File.open('four_score.txt', 'r')

# THIS WORKS, BUT I NEED TO CLARIFY WHEN TO ADD THE NEXT_SENTENCE TO
# THE CURRENT_SENTENCE BECAUSE I'M MISSING SOME WORDS AT THE BEGINNING
# OF SENTENCES.
def count_words(sentence)
  words_array = sentence.split
  words_array.count
end

def line_splitter(line, current_sentence, next_sentence, longest_sentence)
  splitters = /[.?!]/
  if splitters =~ line
    split_point = splitters =~ line
    current_sentence << line[0..split_point]
    next_sentence << line[(split_point + 1)..-1]
    if count_words(current_sentence) > count_words(longest_sentence)
      longest_sentence.clear
      longest_sentence << current_sentence
    end
    current_sentence.clear
    if splitters =~ next_sentence
      new_line = next_sentence
      line_splitter(new_line, current_sentence, next_sentence, longest_sentence)
    else
      current_sentence << next_sentence
      next_sentence.clear
    end
  else
    current_sentence << line
  end
end

text_file.each do |line|
  line_splitter(line, current_sentence, next_sentence, longest_sentence)
end

puts longest_sentence
puts count_words(longest_sentence)

=begin
Example text:

Four score and seven years ago our fathers brought forth
on this continent a new nation, conceived in liberty, and
dedicated to the proposition that all men are created
equal.

Now we are engaged in a great civil war, testing whether
that nation, or any nation so conceived and so dedicated,
can long endure. We are met on a great battlefield of that
war. We have come to dedicate a portion of that field, as
a final resting place for those who here gave their lives
that that nation might live. It is altogether fitting and
proper that we should do this.

But, in a larger sense, we can not dedicate, we can not
consecrate, we can not hallow this ground. The brave
men, living and dead, who struggled here, have
consecrated it, far above our poor power to add or
detract. The world will little note, nor long remember
what we say here, but it can never forget what they
did here. It is for us the living, rather, to be dedicated
here to the unfinished work which they who fought
here have thus far so nobly advanced. It is rather for
us to be here dedicated to the great task remaining
before us -- that from these honored dead we take
increased devotion to that cause for which they gave
the last full measure of devotion -- that we here highly
resolve that these dead shall not have died in vain
-- that this nation, under God, shall have a new birth
of freedom -- and that government of the people, by
the people, for the people, shall not perish from the
earth.
The longest sentence in the above text is the last sentence; it is 86 words long. (Note that each -- counts as a word.)
=end

# Another Example

# Download the book at http://www.gutenberg.org/cache/epub/84/pg84.txt,
#  and run your program on this file.

# The longest sentence in this book is 157 words long.
