class Triangle
  # write code here\

  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    # determine if triangle is even a triangle, trangle inequality
    if @side1>0 && @side2>0 && @side3>0 && @side1 + @side2 > @side3 && @side2 + @side3 > @side1 && @side3 + @side1 > @side2
      if @side1 == @side2 && @side1 == @side3
        :equilateral
      elsif @side1 == @side2 || @side2 == @side3 || @side3 == @side1
        :isosceles
      else
        :scalene
      end
    else
      # begin
        raise TriangleError
      # rescue TriangleError => error 
      #   puts error.message
      # end
    end
  end

  class TriangleError < StandardError
    # def message
    #   "triangle invalid"
    # end
  end

end