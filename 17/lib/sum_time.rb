require 'time'

module SumTime
  TIME_REGEX =  /^([0-1]\d|2[0-3]):([0-5]\d):([0-5]\d)$/

  def sum_time(time1,time2)
    sum = time1 + time2.sec + time2.min * 60 + time2.hour * 3600
  end

  def is_valid_time?(time)
    TIME_REGEX =~ time
  end

  def total_time(time1, time2)
    if is_valid_time?(time1) && is_valid_time?(time2)
      time1 = Time.parse(time1)
      time2 = Time.parse(time2)
      total_time = sum_time(time1, time2)
      
      total = "#{total_time.hour}:#{total_time.min}:#{total_time.sec}"
      day = total_time.day - time1.day
      total = day > 0 ? "#{day} #{day > 1 ? "days" : "day" } & #{total}" : "#{total}"
    else
      raise "Invalid time values supplied"
    end
  end
end