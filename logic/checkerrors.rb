require_relative '../logic/raisingerrors'

class CheckErrors
  include RaisingErrors
  def initialize(str, indx)
    @str = str
    @indx = indx
  end

  def check_whitespaces
    raise_an_error(1, @indx) if @str[@str.size - 2] == ' '
  end

  def check_length
    raise_an_error(2, @indx) if @str.size > 118
  end

  def check_parentes_count
    splitted_str = @str.delete(' ').split('')
    raise_an_error(3, @indx) if splitted_str.count('(') != splitted_str.count(')')
    raise_an_error(4, @indx) if splitted_str.count('[') != splitted_str.count(']')
    raise_an_error(5, @indx) if splitted_str.count('{') != splitted_str.count('}')
    raise_an_error(6, @indx) if splitted_str.count('|').odd?
  end

  def check_spacing
    (0...@str.length).each do |ind|
      if ['+', '-', '=', '/', '*', '{', '}'].include?(@str[ind]) && @str[ind - 1] != ' ' && @str[ind + 1] != ' '
        raise_an_issue(7, @indx)
      end
      raise_an_issue(8, @indx) if ['(', '[', '!'].include?(@str[ind]) && @str[ind + 1] == ' '
    end
  end

  def check_spaces
    (0...@str.length).each do |ind|
      raise_an_issue(9, @indx) if [')', ']'].include?(@str[ind]) && @str[ind - 1] == ' '
    end
  end
end
