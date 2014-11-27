my_hash = { "one" => 2 , :flowers => "power puff"}
p my_hash

my_hash[:matteo] = "harcode dude"
p my_hash

my_hash[:add] = "value"
p my_hash

def calculate(*options)
end

def add(*numbers)
  numbers.inject(0) { |sum, number| sum + number }  
end

def subtract(*numbers)
  current_result = numbers.shift
  numbers.inject(current_result) { |current_result, number| current_result - number }  
end

def calculate(*arguments)
  # if the last argument is a Hash, extract it 
  # otherwise create an empty Hash
  options = arguments[-1].is_a?(Hash) ? arguments.pop : {}
  options[:add] = true if options.empty?
  return add(*arguments) if options[:add]
  return subtract(*arguments) if options[:substract]
end

my_subtraction = { :substract => true }
puts calculate(1,5,7,9,my_subtraction)
puts calculate(3,4,7)