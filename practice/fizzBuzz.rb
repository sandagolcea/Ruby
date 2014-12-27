# fizz buzz
# if div 3 then fizz if div 5 then buzz
puts "Give n: "
nr = gets.chomp.to_i

1.upto(nr) do |n|
  puts "fizz" if (n%3==0)
  puts "buzz" if (n%5==0)
  puts n if ((n%3!=0) && (n%5!=0))
end