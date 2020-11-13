module RaisingErrors
  def raise_an_error(code, index = 0)
    case code
    when 1
      puts "Line #{index + 1} trailing whitespace(s) detected"
    when 2
      puts "Line #{index + 1} exceeds recommended length"
    when 3
      puts 'File should end with a new line'
    end
  end
end
