def calculate(*numbers)
  yield(*numbers)
end

puts calculate(1, 2, 3, 4, 5) {|a, b| a + b }
# only adds the first two (a and b)