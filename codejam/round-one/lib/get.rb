
def read_file(file)


  File.open(file, "r") do |infile|

  counter = 0
  while (line = infile.gets)
      new_line = strip_symbols(line)
      puts new_line if polindrome(new_line.to_s) && new_line.length > 0
      # counter += 1 if polindrome(new_line.to_s) && new_line.length > 0
  end
  counter
end

end

def polindrome(my_string)
  my_string == my_string.reverse
end

def strip_symbols(my_string)
  my_string.downcase!
  my_string.split(//).select { |character| is_alpha?(character) }.join
end

def is_alpha?(character)
  "abcdefghijklmnopqrstuvwxyz".include?(character)
  character.match(/^[[:alpha:]]$/)
end

puts read_file("textfile.md")