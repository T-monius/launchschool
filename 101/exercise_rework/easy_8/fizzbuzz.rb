# fizzbuzz.rb

def fizzbuzz(startpoint, endpoint)
  (startpoint..endpoint).each do |num|
    if (num % 5).zero? && (num % 3).zero?
      print 'FizzBuzz'
    elsif (num % 3).zero?
      print 'Fizz'
    elsif (num % 5).zero?
      print 'Buzz'
    else
      print num
    end
    print ', ' unless num == endpoint
  end
  puts
end

fizzbuzz(1, 15)
