require 'colorize'
class RaisingErrors
  def raise_an_error(code, index = 0)
    case code
    when 1
      "Line #{index + 1} trailing whitespace(s) detected".colorize(color: :red)
    when 2

      "Line #{index + 1} exceeds recommended length".colorize(color: :red)
    when 3
      "Line #{index + 1} unclosed parentheses detected".colorize(color: :red)
    when 4

      "Line #{index + 1} unclosed brackets detected".colorize(color: :red)
    when 5

      "Line #{index + 1} unclosed curly braces detected".colorize(color: :red)

    end
  end

  def raise_an_issue(code, index = 0)
    case code
    when 6

      "Line #{index + 1} unpaired pipe detected".colorize(color: :red)
    when 7

      "Line #{index + 1} missing spaces around operators/after ,/:/;, around {}.".colorize(color: :red)
    when 8

      "Line #{index + 1} spaces after (, [ or ! detected".colorize(color: :red)
    when 9

      "Line #{index + 1} spaces before ), ] detected".colorize(color: :red)
    when 10
      "Line #{index + 1} closing of [],{} or () not valid ".colorize(color: :red)
    end
  end

  def self.all
    ObjectSpace.each_object(self).to_a
  end

  def self.count
    all.count
  end
end
