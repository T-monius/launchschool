# madlibs.rb

WORD_TYPES = [:noun, :verb, :adverb, :adjective]

PHRASE = "Do you %s your %s %s %s? That's hilarious"

def madlib
  inputs = {}
  WORD_TYPES.each do |type|
    new_word = ''
    while new_word.empty? || inputs.values.include?(new_word)
      puts "Please enter a #{type}"
      new_word = gets.chomp
    end
    inputs[type] = new_word
  end

  puts format(PHRASE, inputs[:verb], inputs[:adjective], inputs[:noun],
         inputs[:adverb])
end

madlib
