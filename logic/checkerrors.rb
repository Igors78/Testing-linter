require_relative '../logic/raisingerrors'
require_relative '../logic/lint'

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

  def check_new_line; end
end
