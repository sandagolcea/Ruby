# takes an array of numbers v, and a number d
# takes all series of d numbers (e.g. d=4: first 4 numbers, next 4 numbers etc)
# and calculates the max deviation between the maximum and the min in the series
def deviation(v,d)
  maxDeviation = 0
  for i in 0..v.length-d
    sequence = v.slice(i,d)
    if sequence.max >= maxDeviation
      deviation = sequence.max - sequence.min
      maxDeviation = deviation if maxDeviation < deviation
    end
  end
  puts maxDeviation
end

# input
# v: [3,8,5,2,7,1]
# d: 3

 
# def deviation(values, d)
#   max = values[0]
 
#   sequence = []
#   (d-1).times { sequence << values.shift }
 
#   while values.length > 0
#     new_max = values.shift
#     sequence << new_max
 
#     if new_max > max
#       dev = sequence[d-1] - sequence[0]
#       max = dev if dev > max
#     end
 
#     sequence.shift
#   end
 
#   puts max
# end

deviation([3,8,5,3,2,1,7,1],3)
deviation([6,10,4,7,4,17],3)