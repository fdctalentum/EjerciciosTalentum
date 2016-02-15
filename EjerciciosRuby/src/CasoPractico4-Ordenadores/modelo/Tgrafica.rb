class Ordenador::Tgrafica < Precio
  
  attr_accessor :marca, :modelo, :velocidad
  
  def initialize (marca,modelo,velocidad,precio)
    super(precio)
    @marca = marca
    @modelo = modelo
    @velocidad = velocidad
  end
  
  def to_s
    "Tarjeta Gráfica: #{@marca} #{@modelo} #{@velocidad} / #{@precio} euros"
  end 
  
end