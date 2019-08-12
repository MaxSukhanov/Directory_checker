class ListOfDirectoryFileNames
  def initialize(working_folder)
    @wdir = working_folder
  end

  def files_list
    Dir.chdir(@wdir) do
      Dir.glob("*")
    end
  end
end


     