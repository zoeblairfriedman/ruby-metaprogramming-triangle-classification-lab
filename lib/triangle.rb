class Triangle
attr_accessor :side_3, :side_2, :side_1
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def is_triangle?
    if side_1 + side_2 > side_3 && side_2 + side_3 > side_1 && side_3 + side_1 > side_2
      true
    else
      false
    end
  end

  def kind
    if !is_triangle?
      raise TriangleError
    elsif
      side_1 == side_2 && side_2 == side_3
        :equilateral
    elsif
      #isos
      side_1 == side_2 || side_2 == side_3 || side_1 == side_3
        :isosceles
    else
        :scalene
    end
  end

  class TriangleError < StandardError
    "This is not a valid Triangle"
  end

end
