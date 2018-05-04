class Triangle
  attr_accessor :a, :b, :c
  
  def initialize(attributes)
    attributes.each {|key, value| self.send(("#{key}="), value)}
  end
  
  def kind
    if a > 0 && b > 0 && c > 0 && (a + b > c)
      if a == b && b == c
        :equilateral
      elsif a == b
        :isosceles
      else
        :scalene
      end
    else
      raise TraingleError
    end
  end
  
  class TriangleError < StandardError
    
  end
end
