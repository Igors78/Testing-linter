require_relative '../lib/raisingerrors'

class CheckErrors
  def initialize(str = '', indx = 0)
    @str = str.gsub(/'\S+'/, '')

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

  def check_spacing?
    count = 0
    (0...@str.length).each do |ind|
      if ['+', '-', '=', '/', '*', '{', '}'].include?(@str[ind]) && @str[ind - 1] != ' ' && @str[ind + 1] != ' '
        count += 1
      end
    end
    return true if count.positive?
  end

  def check_spacing_exclamation?
    count = 0
    (0...@str.length).each do |ind|
      count += 1 if ['(', '[', '!'].include?(@str[ind]) && @str[ind + 1] == ' '
    end
    return true if count.positive?
  end

  def check_spaces?
    count = 0
    (0...@str.length).each do |ind|
      count += 1 if [')', ']'].include?(@str[ind]) && @str[ind - 1] == ' '
    end
    return true if count.positive?
  end

  def valid_string?
    stack = []
    symbols = { '{' => '}', '[' => ']', '(' => ')' }

    @str.each_char do |c|
      stack << c if symbols.key?(c)
      return false if symbols.key(c) && symbols.key(c) != stack.pop
    end
    stack.empty?
  end
end
