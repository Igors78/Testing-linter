module RaisingErrors
  def raise_an_error(code, index)
    case code
    when 1
      puts "Line #{index + 1} excessive whitespace(s) detected"
    end
  end
end
