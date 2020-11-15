require_relative '../lib/raisingerrors'

class CheckErrors
  def initialize(str = '', indx = 0)
    @str = str
    @indx = indx
  end

  def check_whitespaces?
    @str[@str.size - 2] == ' '
  end

  def check_length?
    @str.size > 118
  end

  def check_parentes_count?
    splitted_str = @str.delete(' ').split('')
    splitted_str.count('(') != splitted_str.count(')')
  end

  def check_bracket_count?
    splitted_str = @str.delete(' ').split('')
    splitted_str.count('[') != splitted_str.count(']')
  end

  def check_curly_count?
    splitted_str = @str.delete(' ').split('')
    splitted_str.count('{') != splitted_str.count('}')
  end

  def check_pipes_count?
    splitted_str = @str.delete(' ').split('')
    splitted_str.count('|').odd?
  end

  def check_spacing
    (0...@str.length).each do |ind|
      if ['+', '-', '=', '/', '*', '{', '}'].include?(@str[ind]) && @str[ind - 1] != ' ' && @str[ind + 1] != ' '

        RaisingErrors.new.raise_an_issue(7, @indx)
      end
      RaisingErrors.new.raise_an_issue(8, @indx) if ['(', '[', '!'].include?(@str[ind]) && @str[ind + 1] == ' '
    end
  end

  def check_spaces
    (0...@str.length).each do |ind|
      RaisingErrors.new.raise_an_issue(9, @indx) if [')', ']'].include?(@str[ind]) && @str[ind - 1] == ' '
    end
  end
end