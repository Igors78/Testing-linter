require 'rainbow'
class RaisingErrors
  def raise_an_error(code, index = 0)
    case code
    when 1
      Rainbow("Line #{index + 1} trailing whitespace(s) detected").red
    when 2

      Rainbow("Line #{index + 1} exceeds recommended length").red
    when 3
      Rainbow("Line #{index + 1} unclosed parentheses detected").red
    when 4

      Rainbow("Line #{index + 1} unclosed brackets detected").red
    when 5

      Rainbow("Line #{index + 1} unclosed curly braces detected").red

    end
  end

  def raise_an_issue(code, index = 0)
    case code
    when 6

      Rainbow("Line #{index + 1} unpaired pipe detected").red
    when 7

      Rainbow("Line #{index + 1} missing spaces around operators/after ,/:/;, around {}.").red
    when 8

      Rainbow("Line #{index + 1} spaces after (, [ or ! detected").red
    when 9

      Rainbow("Line #{index + 1} spaces before ), ] detected").red
    when 10
      Rainbow("Line #{index + 1} closing of [],{} or () not valid ").red
    end
  end

  def self.all
    ObjectSpace.each_object(self).to_a
  end

  def self.count
    all.count
  end
end
