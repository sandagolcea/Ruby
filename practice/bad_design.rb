
class Rectangle
  attr_reader :length, :breadth  

  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

end

class Square
  attr_reader :side

  def initialize(side)
    @side = side
  end

end


class PerimeterCalculator

  def self.calculate(shape)
    if shape.class == Square
      shape.side*4
    elsif shape.class == Rectangle
      shape.length*2 + shape.breadth*2
    end
  end

end


puts PerimeterCalculator.calculate(Square.new(10))

# square = Square.new(10)
# puts square.perimeter

# rectangle =  Rectangle.new(5,10)
# puts rectangle.perimeter
