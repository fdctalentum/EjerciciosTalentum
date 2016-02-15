class Direccion
  
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


class Contacto
  
  attr_accessor :nombre, :apellido, :edad, :email, :direccion
  
   def initialize(nombre,apellido,edad,email,direccion)
     @nombre = nombre
     @apellido = apellido
     @edad = edad
     @mail = email
     @direccion = direccion
   end
  def to_s
    "#{@nombre}, #{@apellido}, #{@edad}, #{@mail}, #{@direccion}"
  end 
end

