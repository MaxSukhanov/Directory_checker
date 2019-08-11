require 'digest'
require_relative 'list_of_directory_file_names'

class MatchingFileNamesAndDigests
  attr_reader :digests
  
  def initialize(working_folder)
    @wdir = working_folder
    @digests = {}
  end

  def file_digest(file_name)
    file_full_path = File.join(working_folder, file_name)
    Digest::SHA256.base64digest(File.read(file_full_path))
  end

  def build_digests
    list = ListOfDirectoryFileNames.new
    files = list.working_directory_files_list
    files.each do |file_name|
      file_digest(file_name).tap |digest|
        digests[digest] ||= []
        digests[digest] << file_name
      end
    end
  end
end



