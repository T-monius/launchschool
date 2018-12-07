# signed_num_to_str.rb

NUMBER_STRING = { 1 => '1', 2 => '2', 3 => '3', 4 => '4',
                  5 => '5', 6 => '6', 7 => '7', 8 => '8',
                  9 => '9', 0 => '0' }

def signed_integer_to_string(int)
  sign = ''
  sign = '+' if int.positive?
  sign = '-' if int.negative?
  str = int.abs
           .digits
           .reverse
           .map { |digit| NUMBER_STRING[digit] }
           .join
  str.prepend(sign)
end
