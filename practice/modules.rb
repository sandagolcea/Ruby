module Perimeter
  # Your code here
  def perimeter
      sum = 0
    sides.each {|current_side| sum += current_side}
    sum

  end
end

class Rectangle
  # Your code here
  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

  def sides
    [@length, @breadth, @length, @breadth]
  end
end

class Square
  # Your code here
  include Perimeter

  def initialize(side)
    @side = side
  end

  def sides
    [@side, @side, @side, @side]
  end
end