# text_analyzer.rb

# Understanding:
# - A text analyzer object
#   + Create one with a class
#   + Instantiate an object of that class
#   + Text to be analyzed is stored in a separate file
#     > File 'read in' in an instance method of the text
#       analyzer class
#   + `process` instance method
#     > This method takes a block
#     > When invoked, the method analyzes the text and outputs
#   + Parse the text variable for: paragraphs, lines, words
#     > Can either do this step in the block, or store as
#       separate variables to be interpolated into a string
#       in the block (Description leads me to believe this
#       should take place in the block).
#     > Paragraphs separated by a blank line
#       = Could institute a criteria that a paragraph is
#         a sequence of multiple lines followed by a blank
#         but will leave it as characters followed by a blank
#         for now.
#       = How do I test for a blank line?
#       = Blank line is all whitespace.
#       = Iterate and pass all lines to a sub-array of a parent
#         collection while not encountering a blank line?
#       = Can iterate with `Sting#each_line` or parse w/ `lines`
#       to the 'std out' a significant output
#     > Lines separated by a return '/n'
#       + `String#lines`
#     > Words are alpha-num chars separated by a single space
#     > No significant return value
#     > No object mutated

# Approach:
# - Input
#   + Read in the file
#     > Set to a local variable
#   + Pass the text variable to the block
#   + Block processing
#     > Paragraph
#       = Get all lines of text in an array
#       = Select lines in the array that are all whitespace
#         and count.
#       = Count plus one is the number of paragraphs.
#     > `String#lines`
#     > Words
#       = Split the text by spaces
#       = count
#   + Yield paragraphs, lines, and words to the block and
#     output to the 'std out'

class TextAnalyzer
  def process
    sample_text = File.read('sandwich_code.txt')
    par_count = (sample_text.lines.select { |line| line.scan(/[\S]/).empty? }.count) + 1
    line_count = sample_text.lines.count
    word_count = sample_text.split.count
    yield(sample_text, par_count, line_count, word_count)
  end
end

analyzer = TextAnalyzer.new
analyzer.process { |text, par, lines, words| puts "#{par} paragraphs" }
analyzer.process { |text, par, lines, words| puts "#{lines} lines" }
analyzer.process { |text, par, lines, words| puts "#{words} words" }

# Sample Output:
# 3 paragraphs
# 15 lines
# 126 words
