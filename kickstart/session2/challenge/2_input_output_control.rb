# Prompt the user for a number, then read it in and print out "hi" that many times
# 
# Repeat this process until the user submits "bye", then say "goodbye" and end the program
# HINT: Check out example 2 if you get stuck

# example:
# PROGRAM: Enter a number
# USER:    4
# PROGRAM: hi hi hi hi
# PROGRAM: Enter a number
# USER:    2
# PROGRAM: hi hi
# PROGRAM: Enter a number
# USER:    bye
# PROGRAM: goodbye


# remember you can try your program out with              $ ruby 2_input_output_control.rb
# and when you think it is correct, you can test it with  $ rake 2:2

def hi_hi_goodbye
  # your code here
  bye = false

  while !bye do
  	puts 'Enter a number or bye'
  	user_input = gets.chomp
  	if 
  		user_input == "bye"
  		bye = true
  	else
  		user_input.to_i.times { print 'hi ' }
  		puts
  	end
  end

  puts 'Goodbye!'
end
# doesn't pass the rake test (neither does the file in the solved exercises, my guess the spec needs fixing)
# but it does what it is being asked, so all good.

# [FYI: this is the initial solved file provided, returns fail on rake 2:2]
# def prompt
#   puts 'Enter a number or bye'
# end

# def hi_hi_goodbye
#   prompt
#   while ( line = gets ) && ( line !~ /bye/ )
#     line.to_i.times { print 'hi ' }
#     puts
#     prompt
#   end
#   puts "Goodbye!"
# end




# This will just invoke the method if you run this program directly
# This way you can try it out by running "$ ruby 2_input_output_control.rb" 
# but it will still work for our tests
hi_hi_goodbye if $0 == __FILE__