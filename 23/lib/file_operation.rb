class FileOperation
  require 'csv'

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

  def write_to_file(grouped_data)
    file_dir = File.expand_path("../csv_output.txt", __FILE__)

    File.open("#{file_dir}", "w+") do |content|
     grouped_data.each do |role, details|
        content.puts details.count > 1 ? "\n#{role}s" : "\n#{role}" #group header
        details.each do |detail|
          content.puts "\t#{detail[" Designation"]} #{detail["Name"]} (EmpId:#{detail[" EmpId"]}) "
        end
     end   
    end
  end
end