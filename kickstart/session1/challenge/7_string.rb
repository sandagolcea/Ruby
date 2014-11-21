# given a string, return the character after every letter "r"
# 
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"


def pirates_say_arrrrrrrrr(string)
	letters = ""
	split_string = string.split(//)

	i = 0
	while ( i < split_string.length )
		# if the current char of the split_string is r or R, and the next char exists, add letter
		if (split_string[i] == "r" || split_string[i] == "R") && split_string[i+1]
				letters << split_string[i+1]
		end
		i += 1
	end
	letters
end
