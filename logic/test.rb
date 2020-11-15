class Test
  attr_reader :content, :offence

  def initialize(file_name)
    @file_name = file_name
    @content = nil
  end

  def check_file
    if @file_name
      puts 'Hello, welcome to Ruby linter!'

    else
      abort 'Enter the valid file name from data folder'
    end
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
