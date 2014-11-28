# Write a function named mod_three which takes an array of numbers, 
# and return a new array consisting of their remainder when divided by three.
# Exclude any numbers which are actually dividible by three.
# 

def mod_three my_array
	@my_array = my_array
	to_return = []
	to_return = @my_array.map { |nr| nr % 3 }
	to_return = to_return.reject { |nr| nr == 0 }
	p to_return
end

# very nice solution from Steph
# def mod_three(numbers)
	# numbers.select {|x| x%3 == 1 || x%3 ==2}.map { |x| x%3 }
# end

# EXAMPLES:
# mod_three [0]  # => []
# mod_three [1]  # => [1]
# mod_three [2]  # => [2]
# mod_three [3]  # => []
# mod_three [4]  # => [1]
# mod_three [5]  # => [2]
# mod_three [6]  # => []
# mod_three [7]  # => [1]

# mod_three [0,1,2,3,4,5,6,7] # => [1, 2, 1, 2, 1]
