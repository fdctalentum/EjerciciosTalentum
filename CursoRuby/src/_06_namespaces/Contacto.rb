class Contacto
    
    def initialize nombre,telefono,direccion
      @nombre = nombre
      @telefono = telefono
      #direccion sera un objeto de tipo Direccion
      @direccion = direccion
    end
    
    def setDireccion direccion
      @direccion = direccion
    end
    
    def to_s
      "#{@nombre},#{@telefono},#{@direccion}"
    end
    
  end