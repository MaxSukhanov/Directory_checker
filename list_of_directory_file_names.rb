require_relative 'file_validator'

class ListOfDirectoryFileNames
  def initialize(working_folder)
    @wdir = working_folder
    @files = []
  end

  def validator
    @validator ||= FileValidator.new(@wdir)
  end

  def files_list
    entries = Dir.new(@wdir).entries
    entries.each do |entry|
      if validator.entry_valid?(entry)
        @files << entry
      end
    end
    return @files
  end
end



     