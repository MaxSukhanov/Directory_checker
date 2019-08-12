require_relative 'matching_file_names_and_digests'

class CountSameFilesReport
  def initialize
    @lines = []
  end
  def frequency_report_of_equal_files
    digest_hs = MatchingFileNamesAndDigests.new(ENV["WORKING_FOLDER"])
    hs = digest_hs.build_digests
    hs.each_pair do |k, v|
      file_num = v.size
      file_name = v 
      @lines << "#{file_num}: #{file_name.join(", ")}"  
    end
    return @lines.sort
  end
end

