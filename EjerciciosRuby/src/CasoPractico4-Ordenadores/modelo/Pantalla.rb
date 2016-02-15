class Ordenador::Pantalla < Precio
  
  attr_accessor :marca, :modelo, :tamaño
  
  def initialize (marca,modelo,tamaño,precio)
    super(precio)
    @marca = marca
    @modelo = modelo
    @tamaño = tamaño
  end
  
  def to_s
    "Monitor #{@marca} #{@modelo} #{@tamaño} / #{@precio} euros"
  end 
  
end