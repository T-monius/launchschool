class Atbash
  ENCRYPTION = { 'a' => 'z', 'b' => 'y', 'c' => 'x',
                 'd' => 'w', 'e' => 'v', 'f' => 'u',
                 'g' => 't', 'h' => 's', 'i' => 'r',
                 'j' => 'q', 'k' => 'p', 'l' => 'o',
                 'm' => 'n', 'n' => 'm', 'o' => 'l',
                 'p' => 'k', 'q' => 'j', 'r' => 'i',
                 's' => 'h', 't' => 'g', 'u' => 'f',
                 'v' => 'e', 'w' => 'd', 'x' => 'c',
                 'y' => 'b', 'z' => 'a' }

  def self.encode(str)
    characters_only = str.gsub(/\W/, '').downcase
    atbash_encryption = atbash(characters_only)
    five_char_sequences(atbash_encryption)
  end

  def self.atbash(str)
    converted_characters = str.chars.map do |char|
      if ('a'..'z').cover?(char)
        ENCRYPTION[char]
      else
        char
      end
    end
    converted_characters.join
  end

  def self.five_char_sequences(str)
    characters = str.chars
    sequences = []
    loop do
      break if characters.empty?
      sequences << characters.slice!(0, 5).join
    end
    sequences.join(' ')
  end
end
