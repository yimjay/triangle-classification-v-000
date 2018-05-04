class Triangle
  attr_accessor :a, :b, :c
  
  def initialize(attributes)
    attributes.each {|key, value| self.send{("#key}=", value)}
  end
  
  def kind
    if a > 0 && b > 0 && c > 0 && a + b > c  
  end
  
end
