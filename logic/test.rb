class Test
  def initialize(file_name)
    @file_name = file_name
    @content = nil
  end

  def check_file
    if @file_name
      puts "Hello, #{@file_name} will be linted!"

    else
      abort 'Enter the valid file name from data folder'
    end
  end

  def read_file
    current_path = Dir.pwd
    file_path = current_path + "/data/#{@file_name}"

    if File.exist?(file_path)
      file_to_lint = File.new(file_path, 'r')
      @content = file_to_lint.read
      file_to_lint.close
      puts content
    else
      abort 'File not found'
    end
  end
end
