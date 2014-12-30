class Time
  require 'time'
  TIME_REGEX = /^([0-1]?\d?|[2]?[0-3]?)[:][0-5]?\d?[:][0-5]?\d?$/

  def self.sum_time(time1,time2)
    # time2 = time2.sec + time2.min * 60 + time2.hour * 3600
    sum = time1 + time2.sec + time2.min * 60 + time2.hour * 3600
  end

  def self.is_valid_time?(time)
    TIME_REGEX =~ time
  end

  def self.total_time(time1, time2)
    if is_valid_time?(time1) && is_valid_time?(time2)
      time1 = Time.parse(time1)
      time2 = Time.parse(time2)
      total_time = sum_time(time1, time2)
      
      total = "#{total_time.hour}:#{total_time.min}:#{total_time.sec}"
      # total = "#{ total_time.hour }:" + "#{ total_time.min }:" + "#{ total_time.sec }"
      day = total_time.day - time1.day
      total = day > 0 ? "1 day & #{total}" : "#{total}"
    else
      Raise "Invalid time values supplied"
    end
  end
end