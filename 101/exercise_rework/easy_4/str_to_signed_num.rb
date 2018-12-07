# str_to_signed_num.rb

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

def string_to_signed_integer(str)
  prefix, str = str[0], str[1..-1] if ['-', '+'].include?str[0]
  digits = str.chars.map { |character| STRING_INTEGER[str[character]] }
  return -join_integers(digits) if prefix == '-'
  join_integers(digits)
end
