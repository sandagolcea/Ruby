
module Perimeter

  def perimeter
    sides.inject {|memo,current_side| memo + current_side}
  end

end

class Rectangle
  
  include Perimeter
  
  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

  def sides
    [@length, @breadth, @length, @breadth]
  end

end

class Square
  
  include Perimeter

  def initialize(side)
    @side = side
  end

  def sides
    [@side, @side, @side, @side]
  end

end


class Triangle
  include Perimeter

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def sides
    [@side1, @side2, @side3]
  end
end
# square = Square.new(10)
# puts square.perimeter

# rectangle =  Rectangle.new(5,10)
# puts rectangle.perimeter

# triangle = Triangle.new(3,5,7)
# puts triangle.perimeter