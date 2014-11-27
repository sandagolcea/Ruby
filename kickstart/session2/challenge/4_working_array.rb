# Write a method named get_squares that takes an array of numbers
# and returns a sorted array containing only the numbers whose square is also in the array
# 
# get_squares [9]                      # => []
# get_squares [9,3]                    # => [3]
# get_squares [9,3,81]                 # => [3, 9]
# get_squares [25, 4, 9, 6, 50, 16, 5] # => [4, 5]

class Array
	
	def in_string? nr
		@my_array.each do |double|
			if nr*nr == double
				return true
			end
		end
		false
	end

	def get_squares
		@my_array = self
		result = []
	
		result = @my_array.select do |nr| 
			true if in_string?(nr)
		end
		# result
		print result
	end

end

[25, 4, 9, 6, 50, 16, 5].get_squares
[9,3,81].get_squares
[9,3].get_squares
[3].get_squares