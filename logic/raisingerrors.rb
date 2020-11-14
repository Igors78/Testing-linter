require 'colorize'
module RaisingErrors
  def raise_an_error(code, index = 0)
    case code
    when 1
      puts "Line #{index + 1} trailing whitespace(s) detected".colorize(color: :red)
    when 2
      puts "Line #{index + 1} exceeds recommended length".colorize(color: :red)
    when 3
      puts "Line #{index + 1} unclosed parentheses detected".colorize(color: :red)
    when 4
      puts "Line #{index + 1} unclosed brackets detected".colorize(color: :red)
    when 5
      puts "Line #{index + 1} unclosed curly braces detected".colorize(color: :red)

    end
  end

  def raise_an_issue(code, index = 0)
    case code
    when 6
      puts "Line #{index + 1} unpaired pipe detected".colorize(color: :red)
    when 7
      puts "Line #{index + 1} missing spaces around operators/after ,/:/;, around {}.".colorize(color: :red)
    when 8
      puts "Line #{index + 1} spaces after (, [ or ! detected".colorize(color: :red)
    when 9
      puts "Line #{index + 1} spaces before ), ] detected".colorize(color: :red)
    end
  end
end
