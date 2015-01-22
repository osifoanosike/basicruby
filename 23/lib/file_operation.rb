class FileOps
  require 'csv'

  def check_freq(array)
    freq = Hash.new(0) 
    array.each do |elem|
      freq[elem] +=  1
    end
    freq
  end

  def pluralize(array)
    array[0] = "#{array[0]}s" if array[1].length > 1
    array
  end

  def read_write(file_name)
    from_file = read_from_file(file_name)

    headers = []
    grouped_records = from_file.group_by do |header|
      header[" Designation"]
    end
    write_to_file(grouped_records)
  end

  def read_from_file(file_name)
    file_dir = File.expand_path("../#{file_name}.csv", __FILE__)
    CSV.read("#{file_dir}", headers: true)  
  end

  def write_to_file(csv_file)
    file_dir = File.expand_path("../csv_output.txt", __FILE__)

    File.open("#{file_dir}", "w+") do |content|
     csv_file.each do |row|
        content.puts pluralize(row)
     end   
    end
  end
end

