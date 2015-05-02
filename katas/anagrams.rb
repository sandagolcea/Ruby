def anagram(string1, string2)
  return false if string1.size != string2.size
  hash = {}
  string1.split(//).each do |letter|
    if !hash[letter]
      hash[letter] = 1
    else
      hash[letter] += 1
    end
  end

  string2.split(//).each do |letter|
    if !hash[letter]
      # not anagram
      puts('not an anagram')
      return false
    else
      hash[letter] -= 1
      if hash[letter] == 0
        # remove element
        hash.delete(letter)
      end
    end
  end
  hash.size == 0
end

# puts "anagram" if anagram('dfsfa', 'dfsfa')
# puts "anagram" if anagram('dfsfa', 'dafsf')
# puts "anagram" if anagram('dfsfa', 'dfsddfa')
# puts "anagram" if anagram('dfsfa', 'daf')
