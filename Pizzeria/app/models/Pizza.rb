class Pizza
  
  attr_accessor :tamaño, :ingredientes
  
  def initialize tamaño,ingredientes
    @tamaño = tamaño
    @ingredientes = ingredientes
    
  end 
  
  def to_s
    "Tu pizza es de tamaño #{@tamaño}, y lleva #{@ingredientes}"
  end
  
end