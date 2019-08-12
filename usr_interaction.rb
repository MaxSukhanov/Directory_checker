require_relative 'list_of_directory_file_names'
require_relative 'count_same_files_report'

class DirectoryCheckerApp
  def self.run
    DirectoryCheckerApp.new.run
  end

  def run
    puts "Hi there. Would you like to get the list of analysed directory files? (y or any key to skip)"
    lst = gets.chomp
      if lst == "y"
        files = ListOfDirectoryFileNames.new(ENV["WORKING_FOLDER"])
        list = files.files_list
        puts "Here is the list of analyzed directory files:"
        puts list
      else
        puts "Okay"
      end

    puts "Would you like to find files with the same content? (y or any key to skip)"
    rep = gets.chomp
      if rep == "y"
        count = CountSameFilesReport.new
        report = count.frequency_report_of_equal_files
        puts "Name of the analyzed directory: "
        puts report
      else
        puts "Okay, bye"
      end
  end 
end