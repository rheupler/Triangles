class Triangle
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind?
    if @side1 == @side2 && @side2 == @side3 && @side3 == @side1
      'equilateral'
    elsif @side1 == @side2 && @side1 != @side3 ||
          @side2 == @side3 && @side2 != @side1 ||
          @side3 == @side1 && @side3 != @side2
      'isosceles'

    elsif @side1 != @side2 && @side1 != @side3 && @side2 != @side3
      'scalene'
    else
      'Not a triangle, bro.'
    end
  end
end
