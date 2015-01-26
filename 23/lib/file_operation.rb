class FileOps
  require 'csv'

  def check_freq(array)
    freq = Hash.new(0) 
    array.each do |elem|
      freq[elem] +=  1
    end
    freq
  end

  def pluralize(role, details)
    role = "#{role}s" if detailslength > 1
  end

  def read_write(file_name)
    from_file = read_from_file(file_name)

    headers = []
    grouped_records = from_file.group_by do |header|
      header[" Designation"]
    end
    puts grouped_records.class
    write_to_file(grouped_records)
  end

  def read_from_file(file_name)
    file_dir = File.expand_path("../#{file_name}.csv", __FILE__)
    CSV.read("#{file_dir}", headers: true)  
  end

  def write_to_file(grouped_data)
    file_dir = File.expand_path("../csv_output.txt", __FILE__)

    File.open("#{file_dir}", "w+") do |content|
     grouped_data.each do |role, details|
        if details.count > 1
          content.puts "\n#{role}s"
        else
          content.puts "\n#{role}"
        end

        for detail in details
          content.puts "#{detail[" Designation"]} #{detail["Name"]} (EmpId:#{detail[" EmpId"]}) "
        end
     end   
    end
  end
end

