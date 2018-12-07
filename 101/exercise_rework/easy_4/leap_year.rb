# leap_year.rb

def divisible_by_4?(int)
  (int % 4).zero?
end

def divisible_by_100?(int)
  (int % 100).zero?
end

def divisible_by_400?(int)
  (int % 400).zero?
end

def leap_year?(yr)
  return false if !divisible_by_4?(yr)
  return false if divisible_by_100?(yr) && !divisible_by_400?(yr)
  true
end

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true
