# Write a method named get_squares that takes an array of numbers
# and returns a sorted array containing only the numbers whose square is also in the array
# 
# version 1, see also version 2 for refractored version
	def in_string? nr
		@my_array.each do |double|
			if nr*nr == double
				return true
			end
		end
		false
	end

	def get_squares my_array
		@my_array = my_array
		result = []
	
		result = @my_array.select do |nr| 
			true if in_string?(nr)
		end
		result.sort!
		result
		# print result
	end

# get_squares [9]                      # => []
# get_squares [9,3]                    # => [3]
# get_squares [9,3,81]                 # => [3, 9]
# get_squares [25, 4, 9, 6, 50, 16, 5] # => [4, 5]