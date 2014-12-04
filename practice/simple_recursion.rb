def append(ary, n)
	return ary << 0 if n == 0
	ary << n
	return append(ary, n-1)
end

def append2(ary,n)
	n.downto(0) {|i| ary << i}
	ary
end

def reverse_append(ary, n)
	return ary if n < 0  # => [0]
	ary = reverse_append(ary,n-1)
	ary << n  
end

def reverse_append2(ary,n)
	0.upto(n) {|i| ary << i}
	ary
end

p append [],2 # => [2,1,0]
p append [],3 # => [3,2,1,0] 
p append [],4 # => [4,3,2,1,0]

p reverse_append [], 2 # => [0,1,2]
p reverse_append [], 3 # => [0,1,2,3]