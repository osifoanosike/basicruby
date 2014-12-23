require_relative '../lib/file_operation.rb'
include FileOperation

fileOps = FileOps.new

fileOps.read_from_file("csv_read_input.csv")

# fileOps.read_by_column("my_new_file.csv")

# fileOps.write_to_file("my_new_file.csv")