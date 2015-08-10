class Triangles
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def equilateral?
    if @side1 == @side2 && @side2 == @side3 && @side3 == @side1
      true
    else
      false
    end
  end
end
