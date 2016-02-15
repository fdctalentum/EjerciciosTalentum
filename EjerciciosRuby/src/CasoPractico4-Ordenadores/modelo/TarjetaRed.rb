class Ordenador::TarjetaRed < Precio
  
  attr_accessor :direccion, :marca, :velocidad
  
  def initialize (direccion,marca,velocidad,precio)
    super(precio)   
    @direccion = direccion
    @marca = marca
    @velocidad = velocidad
 
  end
  
   def to_s
    "#{@direccion} , #{@marca}, #{@velocidad} / #{@precio} euros"
  end 
  
end