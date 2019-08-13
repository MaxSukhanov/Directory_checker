class FileValidator
  def initialize(working_folder)
    @dir_name = working_folder
  end

  def entry_valid?(entry_name)
    return if File.directory?("#{@dir_name}/#{entry_name}")
    return if File.stat("#{@dir_name}/#{entry_name}").mode.to_s(8)[3..5].to_i < 640
    true
  end
end