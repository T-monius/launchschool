# simple_cipher.rb

class Cipher
  attr_accessor :key

  def initialize(str="ddddddddddddddddd")
    raise ArgumentError unless str.match?(/\A[a-z]+\z/)
    self.key = str
  end

  # def encode(text)
  #   @offset = retrieve_offset
  #   text.codepoints
  #       .map { |num| num + offset }
  #       .map(&:chr)
  #       .join
  # end

  def encode(text, operator= :+)
    key_codepoints = key.codepoints
    new_codepoints = []

    text.codepoints.each_with_index do |current_codepoint, i|
      offset = key_codepoints[i] - 'a'.ord
      new_codepoints << current_codepoint + offset if operator == :+
      new_codepoints << current_codepoint - offset if operator == :-
    end

    new_codepoints.map(&:chr).join
  end

  def decode(encoded_text)
    encode(encoded_text, :-)
  end
end
