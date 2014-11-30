# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method 
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

class BeerSong
	attr_accessor 'nr_bottles'

	def initialize(nr_bottles)
		if nr_bottles < 0
			@nr_bottles = 0
		elsif nr_bottles > 99
			@nr_bottles = 99
		else
			@nr_bottles = nr_bottles
		end
	end

	def calc_nr nr_bottles
		hash_tens = {9 => 'ninety', 8 => 'eighty', 7 => 'seventy', 6 => 'sixty', 5 => 'fifty', 4 => 'forty', 3 => 'thirty', 2 => 'twenty'}
		hash_ones = {9 => 'nine', 8 => 'eight', 7 => 'seven', 6 => 'six', 5 => 'five', 4 => 'four', 3 => 'three', 2 => 'two', 1 => 'one', 0 => 'zero', 19 => 'nineteen', 18 => 'eighteen', 17 => 'seventeen', 16 => 'sixteen', 15 => 'fifteen', 14=> 'fourteen', 13=> 'thirteen', 12=> 'twelve', 11=> 'eleven', 10 =>'ten'}

		@nr_bottles = nr_bottles
		@nr_to_print = ""

		if @nr_bottles >= 20
			tens = @nr_bottles / 10
			@nr_to_print = hash_tens[tens]
			# puts hash_tens[tens]
			if @nr_bottles % 10 != 0
				@nr_to_print += '-' + hash_ones[@nr_bottles%10]
				# puts nr_to_print
			end
		elsif @nr_bottles < 20
			# puts hash_ones[@nr_bottles]
			@nr_to_print = hash_ones[@nr_bottles]
		end
		# puts @nr_to_print
		# puts @next_nr_to_print
	end

	def print_song
		while @nr_bottles > 0 
		if @nr_bottles >= 1
			calc_nr @nr_bottles
			@nr_bottles == 1 ? bottles = "bottle" : bottles = "bottles" 
			puts "#{@nr_to_print.capitalize} #{bottles} of beer on the wall,"
			puts "#{@nr_to_print.capitalize} #{bottles} of beer,"
			puts "Take one down, pass it around,"	
		end

		@nr_bottles -= 1

		if @nr_bottles > 0
			calc_nr @nr_bottles
			@nr_bottles == 1 ? bottles = "bottle" : bottles = "bottles" 
			puts "#{@nr_to_print.capitalize} #{bottles} of beer on the wall."
		elsif @nr_bottles == 0
			puts "Zero bottles of beer on the wall."
		end

		
		end
	end

end
# print_song
# my_song = BeerSong.new 99
# my_song.print_song

# second_song = BeerSong.new 99
# second_song.print_song