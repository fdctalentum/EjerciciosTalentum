class Ordenador::DiscoDuro < Precio
  
  attr_accessor :marca, :modelo, :tamaño, :tipo
  
  def initialize (marca,modelo,tamaño,tipo, precio)
    super(precio)
    @marca = marca
    @modelo = modelo
    @tamaño = tamaño
    @tipo = tipo
  end
  
  def to_s
    "Disco Duro: #{@marca} #{@modelo} #{@tamaño} #{@tipo} / #{@precio} euros"
  end 
  
end