# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
# 
def staircase(number, hash={})
	values = [] ; keys = []
	
	x = 1
	while x <= number
		keys << x if x.odd?
		x += 1
	end
	# or just :
	# 1.upto number do |x| ; keys << x if x.odd? ; end

	keys.each do |key|
		y = 1
		values = []
		while y < key
			values << y if y.even?
			y += 1
		end
		hash[key] = values
	end
		
	hash
end

# Examples:
# staircase 1  # => { 1 => [] }
# staircase 2  # => { 1 => [] }
# staircase 3  # => { 1 => [], 3 => [2] }
# p staircase 4  # => { 1 => [], 3 => [2] }
# p staircase 5  # => { 1 => [], 3 => [2], 5 =>[2, 4] }
# p staircase 6 # =>  { 1 => [], 3 => [2], 5 =>[2, 4] }



