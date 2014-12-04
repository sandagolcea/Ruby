# of course fibonacci
# 0,1,1,2,3,5,8,13,21,34,55,...
def fib(n)
	return 0 if n == 0
	return 1 if n == 1
	# n = n-2 + n-1
	return fib(n-2) + fib(n-1)
end

# hard coded:
def fib2(n)
	solutions = [0,1,1,2,3,5,8,13,21,34,55]
	solutions[n]
end
# interesting idea: 
# to use the iterative/hard coded fib2 in order to construct the recursive prg:
# & considering each nr is the sum of the prev 2 numbers:
def fib3(n)
	return fib(n-2) + fib(n-1)
end

p fib(0) # => 0
p fib(1) # => 1
p fib(2) # => 1
p fib(3) # => 2
p fib(4) # => 3
p fib(5) # => 5
p fib(6) # => 8
p fib(7) # => 13
p fib(8) # => 21
p fib(9) # => 34
p fib3(10) # => 55