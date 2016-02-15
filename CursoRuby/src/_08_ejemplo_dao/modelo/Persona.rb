class Persona
  
  attr_accessor :id, :nombre
  
  def initalize(nombre, id=nil)
    @nombre = nombre
    @id = id
  end
  
end