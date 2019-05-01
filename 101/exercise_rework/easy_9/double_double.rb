# double_double.rb

def twice(num)
  str_num = num.to_s
  if str_num.length.even?
    half = str_num.length / 2 - 1
    return num if str_num[0..half] == str_num[(half + 1)..-1]
  end
  num * 2
end
