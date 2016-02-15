class Ordenador::PlacaBase < Precio
  
  attr_accessor :marca, :modelo
  
  def initialize (marca,modelo,precio)
    super(precio)
    @marca = marca
    @modelo = modelo
  end
  
  def to_s
    "Placa Base: #{@marca} #{@modelo} / #{@precio} euros"
  end 
  
end