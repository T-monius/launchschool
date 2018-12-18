# cute_angles.rb

DEGREE = "\xC2\xB0"

def dms(flt)
  dms_string = ''
  degrees, decimal = flt.divmod(1)
  dms_string << format("%02d", degrees) + DEGREE
  minutes_float = decimal * 60
  minutes, seconds_float = minutes_float.divmod(1)
  dms_string << format("%02d", minutes) + "'"
  seconds = seconds_float * 60
  dms_string << format("%02d", seconds) + "\""
end
