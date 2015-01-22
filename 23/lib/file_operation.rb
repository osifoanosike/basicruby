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
    freq
  end

  def pluralize(array)
    freq_result = check_freq(array)
    array.each do |elem|
      elem << "s" if freq_result[elem] > 1
    end
  end

  def read_write(file_name)
    from_file = read_from_file(file_name)
    puts from_file

    headers = []
    from_file.group_by do |header|
      header[" Designation"]
    end
    headers = pluralize(headers).uniq! #check for freq and pluralize accordingly
    write_to_file(from_file)

  end

  def read_from_file(file_name)
    file_dir = File.expand_path("../#{file_name}.csv", __FILE__)
    from_file = CSV.read("#{file_dir}", headers: true)  
  end

  def write_to_file(csv_file)
    file_dir = "../lib/csv_output.txt"

    File.open("#{file_dir}", "w+") do |content|
     csv_file.each do |row|
        content.puts " #{row[" Designation"]} #{row["Name"]} (EmpId:#{row[" EmpId"]})\n"
     end   
    end
  end
end

