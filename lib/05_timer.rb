def time_string(int)
  seconds = int % 60
  minutes = (int / 60) % 60
  hours = int / 3600

  format("%02d:%02d:%02d", hours, minutes, seconds)
end
