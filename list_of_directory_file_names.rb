class ListOfDirectoryFileNames
  def initialize
    @wdir = ENV["WORKING_FOLDER"]
  end

  def files_list
    Dir.chdir(@wdir) do
      Dir.glob("*")
    end
  end
end


     