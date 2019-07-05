# longest_sentence.rb

text = File.read('ex_text.txt')
text1 = File.read('frankenstein1.txt')

sentences = text.split(/[.?!]/)

longest = sentences.max_by do |sentence|
    sentence.strip.split.size
  end

longest = longest.strip

message = <<-msg
The longest sentence in this text is:

#{longest}

The sentence has #{longest.split.size} words.
msg

puts message

sentences1 = text1.split(/[.?!]/)

longest1 = sentences1.max_by do |sentence|
    sentence.strip.split.count
  end

longest1 = longest1.strip

message1 = <<-msg
The longest sentence in this text is:

#{longest1}

The sentence has #{longest1.split.count} words.
msg

puts message1
