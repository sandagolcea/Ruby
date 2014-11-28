# Given an array of elements, return true if any element shows up three times in a row
# 
def got_three? elements
	elements.each_cons(3) { |one,two,three| return true if one == two && two==three }
	return false
	
	# This solution is valid if we only care about the absolute number of times (!consecutive)
	# h = Hash.new { |hash, key| hash[key] = "Go Fish: #{key}" }
	# elements.each_with_index {|elem, index| hash[elem] += 1 }
	# p hash
	
end
# Examples:
# puts got_three? [1, 2, 2, 2, 3]  # => true
# puts got_three? ['a', 'a', 'b']  # => false
# puts got_three? ['a', 'a', 'a']  # => true
# puts got_three? [1, 2, 1, 1]     # => false
