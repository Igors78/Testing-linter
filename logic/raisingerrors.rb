module RaisingErrors
  def raise_an_error(code, index = 0)
    case code
    when 1
      puts "Line #{index + 1} trailing whitespace(s) detected"
    when 2
      puts "Line #{index + 1} exceeds recommended length"
    when 3
      puts "Line #{index + 1} unclosed parentheses detected"
    when 4
      puts "Line #{index + 1} unclosed brackets detected"
    when 5
      puts "Line #{index + 1} unclosed curly braces detected"

    end
  end

  def raise_an_issue(code, index = 0)
    case code
    when 6
      puts "Line #{index + 1} unpaired pipe detected"
    when 7
      puts "Line #{index + 1} missing spaces around operators/after commas/colons/semicolons, around { and before }."
    when 8
      puts "Line #{index + 1} spaces after (, [ or ! detected"
    when 9
      puts "Line #{index + 1} spaces before ), ] detected"
    end
  end
end
