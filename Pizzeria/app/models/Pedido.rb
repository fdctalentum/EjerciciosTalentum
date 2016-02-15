class Pedido
  
  attr_accessor :direccion,:telefono,:pizza
  
  def initialize direccion, telefono, pizza
    @direccion = direccion
    @telefono = telefono
    @pizza = pizza  
  end
  
  def to_s
    "Direccion: #{@direccion}, con Teléfono #{@telefono}"
  end
  
  
end