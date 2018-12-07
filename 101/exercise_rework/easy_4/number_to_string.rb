# number_to_string.rb

NUMBER_STRING = { 1 => '1', 2 => '2', 3 => '3', 4 => '4',
                  5 => '5', 6 => '6', 7 => '7', 8 => '8',
                  9 => '9', 0 => '0' }

def integer_to_string(int)
  int.digits.reverse.map { |digit| NUMBER_STRING[digit] }.join
end
