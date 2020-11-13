require_relative '../logic/raisingerrors'
class CheckErrors
  include RaisingErrors
  def initialize(str, indx)
    @str = str
    @indx = indx
  end

  def check_whitespaces
    splitted_str = @str.split(' ')
    raise_an_error(1, @indx) if @str.size != splitted_str.join(' ').size
  end
end
