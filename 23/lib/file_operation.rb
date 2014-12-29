class FileOps
  require 'csv'

  def check_freq(array)
    freq = Hash.new(0) 
    array.each do |elem|
      if freq.keys.grep(/#{elem}/i)
        (freq[elem] = freq[elem] + 1)
      else
        freq[elem] = 1
      end
    end
    return freq
  end

  def pluralize(array)
    freq_result = check_freq(array)
    array.each do |elem|
      elem << "s" if freq_result[elem] > 1
    end

    # puts "pluralized array: #{array}"
  end

  def read_write(file_name)
    from_file = read_from_file(file_name)
    headers = []
    from_file.each do |header|
      headers << header[" Designation"].to_s.strip!
    end
    headers = pluralize(headers).uniq! #check for freq and pluralize accordingly
    write_to_file(from_file, headers)

  end

  def read_from_file(file_name)
    # csv_file = File.open("/home/osifo/dev/playground/ruby/#{file_name}")
    file_dir = "/home/osifo/dev/trainings/basicruby/23/lib/#{file_name}"
    from_file = CSV.read("#{file_dir}", headers: true)   
  end

  def write_to_file(csv_file, headers)
    file_dir = "/home/osifo/dev/trainings/basicruby/23/lib/csv_output.csv"

    File.open("#{file_dir}", "w+") do |content|
      headers.each do |header|
        content.puts "#{header}\n"
        csv_file.each do |row|
         if row[" Designation"].to_s.strip == header
          content.puts "#{row["Name"]} (EmpId:#{row[" EmpId"]})\n"
          end
        end   
      end 
    end
  end
end