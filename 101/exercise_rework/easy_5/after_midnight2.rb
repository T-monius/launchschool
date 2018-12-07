# after_midnight2.rb

MINUTES_IN_HOUR = 60
HOURS_IN_DAY = 24
MINUTES_IN_DAY = MINUTES_IN_HOUR * HOURS_IN_DAY

def after_midnight(str)
  hours, minutes = str.split(':')
  hours = hours.to_i % 24
  total_minutes = hours * MINUTES_IN_HOUR + minutes.to_i
end

def before_midnight(str)
  total_minutes = after_midnight(str)
  return total_minutes if total_minutes.zero?
  MINUTES_IN_DAY - total_minutes
end
