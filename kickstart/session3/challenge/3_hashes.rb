# Write a method that takes a string and returns a hash
# whose keys are all the downcased words in the string, 
# and values are the number of times these words were seen.
# 
def word_count(my_string)
	hash=Hash.new(0)

	ary = my_string.downcase.split(" ")
	ary.each do |x|
		hash[x] += 1
	end 	
	hash
end

# and all that on one line because it's sexier like that:
def word_count2(my_string)
	hash=Hash.new(0)
	my_string.downcase.split(" ").each { |x| hash[x] += 1 }
	hash
end

# their implementation:
def word_count3(str)
  words = Hash.new { 0 }
  str.split.each { |word| words[word.downcase] += 1 }
  words
end

# No punctuation will appear in the strings.
# 
# Example:
# p word_count "The dog and the cat" # => { "the" => 2, "dog" => 1, "and" => 1, "cat" => 1 }
# p word_count ""
