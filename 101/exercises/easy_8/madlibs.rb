# madlibs.rb

# Mad libs are a simple game where you create a story template with blanks
# for words. You, or another player, then construct a list of words and
# place them into the story, creating an often silly or funny story as a
# result.

# Create a simple mad-lib program that prompts for a noun, a verb, an
# adverb, and an adjective and injects those into a story that you create.

# Example

# Understanding:
# Prompt user for input
# Store input in variables
# Interpolate variables into string

def prompt(message)
  puts "=> #{message}"
end

loop do
  noun = ''
  loop do
    prompt('Please give me a noun:')
    noun = gets.chomp

    if noun == ''
      prompt('You didn\'t enter anything!')
    elsif noun =~ /\W/
      prompt('Only alphanumeric characters please.')
    else
      break
    end
  end

  verb = ''
  loop do
    prompt('Please give me a verb:')
    verb = gets.chomp

    if verb == ''
      prompt('You didn\'t enter anything!')
    elsif noun =~ /\W/
      prompt('Only alphanumeric characters please.')
    else
      break
    end
  end

  adverb = ''
  loop do
    prompt('Please give me a adverb:')
    adverb = gets.chomp

    if adverb == ''
      prompt('You didn\'t enter anything!')
    elsif noun =~ /\W/
      prompt('Only alphanumeric characters please.')
    else
      break
    end
  end

  adjective = ''
  loop do
    prompt('Please give me an adjective:')
    adjective = gets.chomp

    if adjective == ''
      prompt('You didn\'t enter anything!')
    elsif noun =~ /\W/
      prompt('Only alphanumeric characters please.')
    else
      break
    end
  end

  sentence_1 = "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
  sentence_2 = "The #{adjective} #{noun} #{verb}s #{adverb} over the lazy dog."
  sentence_3 = "The #{noun} #{adverb} #{verb}s up #{adjective} Joe's turtle."
  puts [sentence_1, sentence_2, sentence_3].sample

  prompt('Play again? (Y to replay or anything else to end)')
  answer = gets.chomp.downcase

  break unless answer.start_with?('y')
end

prompt('Thanks for playing the MadLib!')

=begin
Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

Do you walk your blue dog quickly? That's hilarious!
=end