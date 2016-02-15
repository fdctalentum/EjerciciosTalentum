class Ordenador::Procesador < Precio
  
  attr_accessor :marca, :modelo, :velocidad
  
  def initialize (marca,modelo,velocidad,precio) 
    super(precio)
    @marca = marca
    @modelo = modelo
    @velocidad = velocidad
    
  end
  
  def to_s
    "Procesador: #{@marca} #{@modelo} #{@velocidad} / #{@precio} euros"
  end 
  
end