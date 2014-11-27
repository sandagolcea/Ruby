# Write a method named every_other_char for strings that, 
# returns an array containing every other character
# 
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""
# 'Four score and seven years ago...'.every_other_char # .should == 'Fu cr n ee er g..'

# version 1 : using strings
class String
	def every_other_char
		result = ""
		self.each_char.with_index do |letter,index|
			result << letter if index.even?
		end 
		result
	end
end

# version 2 : with array indexing
# class String
# 	def every_other_char
# 		result = ""
#       # transform into an array with all letters
# 		str = self.split(//) 
# 		str.each_with_index do |letter,index|
# 			result << letter if index.even?
# 		end 
# 		result
# 	end
# end

# String.each_char => iterates over every char in a string
# Array.with_index => to reach the index in an array

# didn't know each_char existed, didn't remember how to show indexes. bad sandy!