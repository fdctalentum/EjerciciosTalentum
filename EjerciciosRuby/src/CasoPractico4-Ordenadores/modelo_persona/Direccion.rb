class Agenda::Direccion
  
  attr_accessor :tipo, :nombre, :numero, :piso, :letra
  
  def initialize(tipo,nombre,numero,piso=nil,letra=nil)
    @tipo = tipo
    @nombre = nombre
    @numero = numero
    @piso = piso
    @letra = letra
  end
  
  def to_s
    "#{@tipo} #{@nombre}, #{@numero} #{@piso}, #{@letra}"
  end
end