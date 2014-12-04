# "when someone says 'ugh' you say 'oof'"
RESPONSES = {"hello there" => "hi, how are you?",
	"hi gorgeous!" => "hello handsome!"
}

input1 = "when someone says 'ugh' you say 'oof'"
input2 = "When someone says '/^hi!$/' you say 'bye!'"
# user_input = gets.chomp.downcase

@regex = /[w|W]hen someone says '(.*)' you say '(.*)'/
@user_responses = {}

def matching input
	input =~ @regex
	@user_responses[$1] = "#{$2}"
	# RESPONSES[$1] = "#{$2}"
end

matching input1
matching input2

@user_responses.each { |x,y| RESPONSES[x] = y }
p @user_responses
p RESPONSES
