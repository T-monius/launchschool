# after_midnight.rb

MINUTES_IN_HOUR = 60
MINUTES_IN_DAY = 1440

def time_of_day(int)
  minutes_of_day = int % MINUTES_IN_DAY
  hours, minutes = minutes_of_day.divmod(MINUTES_IN_HOUR)
  "%02d:%02d" % [hours, minutes]
end
