class Triangle
  attr_accessor :a, :b, :c
  
  def initialize(attributes)
    attributes.each {|key, value| self.send{"#key}=", value}
  end
end
