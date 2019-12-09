def clock_angle(input_time)
  time_array = input_time.split(":")
  hours = (time_array[0] + "." + (time_array[1].to_f() * (5.0/3.0)).to_s()).to_f()
  minutes = time_array[1].to_f()
  if hours >= 12.0
    hours = hours - 12.0
  end
  hours = 30 * hours
  minutes = minutes * 6
  time = (minutes - hours).abs
  if time > 180
    time = 360 - time
  end
  return time
end
