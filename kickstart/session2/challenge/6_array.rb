# Write a method named prime_chars? which takes an array of strings
# and returns true if the sum of the number of characters is prime. 
# 
# Remember that a number is prime if the only integers that can divide it with no remainder are 1 and itself. 
# 
require 'mathn'

def prime_chars? array_of_chars
  sum = 0
  
  array_of_chars.each do |sub_array|
  
  	partial_sum = 0
  	sub_array.each_char { |letter| partial_sum += 1 }

  	sum += partial_sum
  end  
  sum.prime? ? true : false
end

# Examples of length three
# prime_chars? ['abc']            # => true
# prime_chars? ['a', 'bc']        # => true
# prime_chars? ['ab', 'c']        # => true
# prime_chars? ['a', 'b', 'c']    # => true
# 
# Examples of length four
# prime_chars? ['abcd']           # => false
# prime_chars? ['ab', 'cd']       # => false
# prime_chars? ['a', 'bcd']       # => false
# prime_chars? ['a', 'b', 'cd']   # => false
