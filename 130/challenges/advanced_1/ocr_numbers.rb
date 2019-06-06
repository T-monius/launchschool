# ocr_numbers.rb

require 'pry'

class OCRDigit
  OCRS = {" _\n| |\n|_|\n" => 0, "\n  |\n  |\n" => 1, " _\n _|\n|_\n" => 2,
          " _\n _|\n _|\n" => 3, "\n|_|\n  |\n" => 4, " _\n|_\n _|\n" => 5,
          " _\n|_\n|_|\n" => 6, " _\n  |\n  |\n" => 7, " _\n|_|\n|_|\n" => 8,
          " _\n|_|\n _|\n" => 9, "   \n  |\n  |\n" => 1, " _ \n _|\n|_ \n" => 2,
          " _ \n _|\n _|\n" => 3, "   \n|_|\n  |\n" => 4, " _ \n|_ \n _|\n" => 5,
          " _ \n|_ \n|_|\n" => 6, " _ \n  |\n  |\n" => 7, " _ \n|_|\n|_|\n" => 8,
          " _ \n|_|\n _|\n" => 9, " _ \n| |\n|_|\n" => 0 }
  attr_accessor :digit, :string_representation

  def initialize(str)
    valid?(str)
    self.digit = convert(str)
    self.string_representation = OCRS.invert[digit]
  end

  def to_s
    digit.to_s
  end

  private

  def valid?(str)
    raise StandardError unless str.match?(/( _)?\n[| ][_ ][| ]?\n[| ][_ ]|\n/)
  end

  def convert(str)
    ocr_result = OCRS[str]
    ocr_result ? ocr_result : '?'
  end
end

class OCR
  def initialize(str)
    three_newlines = /.*\n.*\n.*\n/
    ocr_lines = str.scan(three_newlines)
    self.ocr_digits = ocr_lines.map do |inner_line|
      binding.pry
      parse(inner_line).map do |potential_digit|
        OCRDigit.new(potential_digit)
      end
    end
  end

  def convert
    ocr_digits.map { |ocr_line| ocr_line.join }.join(',')
  end

  private

  attr_accessor :ocr_digits

  def parse(str)
    ocr_partials = str.split("\n")
    top, middle, bottom = ocr_partials.map do |partial_ocr|
      partial_ocr.scan(/[ |_]{2,3}/)
    end
    bottom.map.with_index do |bottom_chars, i|
      "#{top[i]}\n#{middle[i]}\n#{bottom_chars}\n"
    end
  end
end

# ten = <<-NUMBER.chomp
#     _
#   || |
#   ||_|

#     NUMBER

# ones_zeros = <<-NUMBER.chomp
#        _     _        _  _
#   |  || |  || |  |  || || |
#   |  ||_|  ||_|  |  ||_||_|

#     NUMBER

# OCR.new(ten)

# OCR.new(ones_zeros)

=begin
# Initial Convoluded attempt
class OCRDigit
  possible_ocrs = { 0 => " _\n| |\n|_|\n", 1 => "\n  |\n  |\n" }
  attr_accessor digit:, ocr:

  def initialize(row_1, row_2, row_3)
    full_string = first_row + "\n" + second_row + "\n" + third_row + "\n"
    self.digit = validate(full_string)
    self.ocr = possible_ocrs(digit)
  end

  def validate(str)
    ocr_result = possible_ocrs.invert[str]
    ocr_result ? ocr_result : '?'
  end
end

class OCR
  def initialize(str)
    row1, row2, row3 = str.split("\n")
    longest_row = longest(rows)
    rows[longest_row].each_cons
  end

  def longest(rows)
    r = rows[0].length
    r1 = rows[1].length
    r2 = rows[2].length
    if r >= r1 && r >= r2
      0
    elsif r1 >= r && r1 >= r2
      1
    elsif r2 >= r && r2 >= r1
      2
    end
  end
end
=end
