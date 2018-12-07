# what_century.rb

def get_suffix(centuries)
  last_two_digits = centuries[-2..-1]
  return 'th' if ('11'..'19').cover?(last_two_digits)
  last_digit = centuries[-1]
  case last_digit
  when '1'
    'st'
  when '2'
    'nd'
  when '3'
    'rd'
  else
    'th'
  end
end

def century(year)
  centuries, remainder = year.divmod(100)
  centuries += 1 if remainder > 0
  "#{centuries}#{get_suffix(centuries.to_s)}"
end

# Examples:
p century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'
