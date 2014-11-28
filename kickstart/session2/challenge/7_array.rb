# Given a sentence, return an array containing every other word.
# Punctuation is not part of the word unless it is a contraction.
# In order to not have to write an actual language parser, 
# there won't be any punctuation too complex.
# There will be no "'" that is not part of a contraction.
# Assume each of these characters are not to be considered: 
# ! @ $ # % ^ & * ( ) - = _ + [ ] : ; , . / < > ? \ |
# 
def alternate_words words
	changed_array = []
	@words = words.gsub(/[!@$#%^&*()-=_+\[\]:;,.\/\\<>?|]/," ")
	words_array = @words.split(" ")
	
	# words_array.each_with_index {|word,index| changed_array << word.to_s.gsub(/[!@$#%^&*()-=_+\[\]:;,.\/\\<>?|]/,'') if index % 2 == 0 && word != nil }
	words_array.each_with_index {|word,index| changed_array << word if index % 2 == 0 && word != nil }
	changed_array.reject! { |c| c.empty? }

	# p changed_array
	changed_array
end

# Examples
alternate_words("Lorem ipsum dolor sit amet.")  # => ["Lorem", "dolor", "amet"]
# alternate_words("Can't we all get along?")      # => ["Can't", "all", "along"]
# alternate_words("Elementary, my dear Watson!")  # => ["Elementary", "dear"]
# alternate_words "Would a dating service on the net be frowned upon . . . ? I hope not. But even if it is, don’t let that stop you from notifying me via net mail if you start one." 
# => ["Would", "dating", "on", "net", "frowned", "I", "not", "even", "it", "don’t", "that", "you", "notifying", "via", "mail", "you", "one"]
# alternate_words "If you want to accomplish something in the world, idealism is not enough--you need to choose a method that works to achieve the goal. In other words, you need to be pragmatic." 
# => ["If", "want", "accomplish", "in", "world", "is", "enough", "need", "choose", "method", "works", "achieve", "goal", "other", "you", "to", "pragmatic"]
