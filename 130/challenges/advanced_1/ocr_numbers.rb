# ocr_numbers.rb

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
    str
  end
end

=begin
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
