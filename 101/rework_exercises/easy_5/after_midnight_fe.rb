# after_midnight_fe.rb

# Further Explanation:
# How would you approach this problem if you were allowed to use
# ruby's Date and Time classes? Suppose you also needed to consider
# the day of week? (Assume that delta_minutes is the number of minutes
# before or after midnight between Saturday and Sunday; in such a
# method, a delta_minutes value of -4231 would need to produce a
# return value of Thursday 01:29.)

MINUTES_IN_HOUR = 60
MINUTES_IN_DAY = 1440
DAYS_OF_WEEK = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday',
                'Friday', 'Saturday']

def time_of_day(minutes)
  days = minutes / MINUTES_IN_DAY
  weekday = days % 7
  minutes = minutes % MINUTES_IN_DAY
  hrs, mins = minutes.divmod(MINUTES_IN_HOUR)
  DAYS_OF_WEEK[weekday] + ' ' +
    Time.new(2018, 1, weekday, hrs, mins).to_s[11..15]
end

puts time_of_day(-4231)# == "01:29"
puts time_of_day(4231)
