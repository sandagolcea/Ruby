def power_of_4(number)
	while (number > 4)
		number = number / 4
	end
	(number % 4 == 0) ? power=true : power=false
end

def alt_power_of_4(number)
	return false if (number == 0 || number == 1)

	while (number != 1)
		# p number
		return false if (number % 4 != 0 )
		number = number / 4
	end

	return true
end

# i=0
# 0.upto(17) do |i|
# # 	# p i
# 	p alt_power_of_4(i)
# end
# p alt_power_of_4(1)