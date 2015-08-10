class Triangles
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind?
    if @side1 == @side2 && @side2 == @side3 && @side3 == @side1
      'equilateral'
    elsif @side1 ==@side2 && @side1 !=@side3 ||
          @side2 ==@side3 && @side2 !=@side1 ||
          @side3 ==@side1 && @side3 !=@side2
      'isosceles'
    else
      false
    end
  end

end
