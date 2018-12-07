# string_to_number.rb

STRING_INTEGER = { '1' => 1, '2' => 2, '3' => 3, '4' => 4,
                   '5' => 5, '6' => 6, '7' => 7, '8' => 8,
                   '9' => 9, '0' => 0 }

def join_integers(arr)
  total = 0
  arr.each_with_index do |int, idx|
    total *= 10
    total += int
  end
  total
end

def string_to_integer(str)
  digits = str.chars.map { |character| STRING_INTEGER[str[character]] }
  join_integers(digits)
end
