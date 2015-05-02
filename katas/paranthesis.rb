def balance(string1)
  stack = []
  openToClose = { "{" => "}", "[" => "]", "(" => ")" }
  string1.split("").each do |ch|
    if openToClose[ch]
      stack << ch
    else
      if ch != openToClose[stack.pop]
        return false
      end
    end
  end
  stack.size == 0
end

# puts 'not balanced' if !balance("(({}]]")
# puts 'balanced' if balance("(({}))")
# puts 'not balanced' if !balance("([{}]]")
# puts 'balanced' if balance("")
# puts 'not balanced' if !balance("[[")
# puts 'not balanced' if !balance("}}")
