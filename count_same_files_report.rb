require_relative 'matching_file_names_and_digests'

class CountSameFilesReport

  def frequency_report_of_equal_files
    digest_hs = MatchingFileNamesAndDigests.new
    hs = digest_hs.build_digests
    hs.each_pair do |k, v|
      file_num = v.size
      file_name = v 
      puts "#{file_num}: #{file_name.join(", ")}"  
    end
  end
end