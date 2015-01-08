require 'time'

module SumTime
  TIME_REGEX =  /^([0]?\d|1\d|2[0-3]):([0-5]\d):([0-5]\d)$/

  def valid?(str)
    TIME_REGEX =~ str
  end

  def sum(times)
    times.inject do |sum, element|
      sum + element.sec + element.min * 60 + element.hour * 3600
    end
  end

  def total_time(*times)
    if times.all? { |time| valid?(time) }
      times = times.map { |time| Time.parse(time)}
      total_time = sum(times)
      total_string = "#{ total_time.hour }:" + "#{ total_time.min }:" + "#{ total_time.sec }"
      days = total_time.day - times[0].day
      if days == 1
        return "#{ days } day & " + total_string
      elsif days > 1
        return "#{ days } days & " + total_string
      else
        return total_string
      end
    else
      raise InvalidTimeError
    end
  end
end