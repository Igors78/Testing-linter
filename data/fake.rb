def check_spacing_exclamation?
  count = 0
  (0...@str.length).each do |ind|
    count += 1 if ['(', '[', '!'].include?(@str[ind]) && @str[ind + 1] == ' '
  end
  return true if count.positive?
end
