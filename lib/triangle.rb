class Triangle
  
  def initialize a, b, c
    @a = a
    @b = b
    @c = c
  end

  def kind
    if (
      (@a + @b > @c) &&
      (@a + @c > @b) &&
      (@b + @c > @a)
    )
      if (@a > 0 && @b > 0 && @c > 0)
        if (@a == @b && @a == @c && @b == @c)
          :equilateral
        elsif (
          (@a == @b && @a != @c) || 
          (@b == @c && @b != @a) ||
          (@c == @a && @c != @b)
        )
          :isosceles
        else
          :scalene
        end
      elsif
        raise TriangleError
      end
    elsif
      raise TriangleError
    end
  end

  class TriangleError < StandardError
    
  end
end
