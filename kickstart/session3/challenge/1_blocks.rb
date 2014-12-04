# Write a method, reverse_map, which invokes a block on each of the elements in reverse order,
# and returns an array of their results.
# 
# reverse_map( 1, 2, 3 ) { |i| i * 2 }      # => [6, 4, 2]

def reverse_map(*ary,&block)
	elements = *ary.reverse_each
	elements.map { |x| block.call x }
end

# their solution:
def reverse_map2(*ary,&block)
	ary.reverse.map(&block)
end

# # so I could have:
# 1. used simply ary instead of *ary
# 2. passed to map the argument &block instead of {|x| block.call x} 
# => basically used is as a proc with proc_name.call argument..

 # p reverse_map(1,2,3) { |i| i * 2 }      # => [6, 4, 2]