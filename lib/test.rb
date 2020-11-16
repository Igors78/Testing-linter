class Test
  attr_reader :content, :file_name

  def initialize(file_name)
    @file_name = file_name
    @content = nil
  end

  def read_file
    current_path = Dir.pwd
    file_path = current_path + "/data/#{@file_name}"

    if File.exist?(file_path)
      file_to_lint = File.new(file_path, 'r')
      @content = file_to_lint.readlines
      file_to_lint.close
      @content
    else
      abort 'File not found'
    end
  end
end
