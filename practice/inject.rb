# def sum_thing(base, *numbers)
def sum_thing(base, numbers)
	@base = base
	@numbers = numbers
	@numbers.inject(@base) { |mem, var| mem + var }
end

numbers = [1,2,3]
# puts sum_thing(1000, 4, 5)
puts sum_thing(2000, numbers)


