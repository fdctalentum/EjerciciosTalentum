class Agenda::Contacto
  
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
