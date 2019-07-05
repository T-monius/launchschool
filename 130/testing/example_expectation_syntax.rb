require 'minitest/autorun'

require_relative 'car'

descirbe 'car#wheels' do
  it 'has 4 wheels' do
    car = Car.new
    car.wheels.must_equal 4 # this is the expectation
  end
end