# leap_year2.rb

def divisible_by_4?(int)
  (int % 4).zero?
end

def divisible_by_100?(int)
  (int % 100).zero?
end

def divisible_by_400?(int)
  (int % 400).zero?
end

def julian_leap_year?(yr)
  (yr % 4).zero?
end

def leap_year?(yr)
  return julian_leap_year?(yr) if yr < 1752
  return false if !divisible_by_4?(yr)
  return false if divisible_by_100?(yr) && !divisible_by_400?(yr)
  true
end
