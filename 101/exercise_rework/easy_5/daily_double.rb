# daily_double.rb

def crunch(str)
  return '' if str.empty?
  compressed_string = ''

  str.each_char.with_index do |char, idx|
    previuous_char_idx = idx - 1
    compressed_string << char if char != str[previuous_char_idx] ||
                                 compressed_string.empty?
  end
  compressed_string
end
