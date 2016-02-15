class Contacto::Direccion
  
  def initialize tipoVia, nombreVia, cp
    @tipoVia,@nombreVia,@cp = tipoVia,nombreVia,cp
  end
  
  def to_s
    "#{@tipoVia},#{@nombreVia},#{@cp}"
  end
end