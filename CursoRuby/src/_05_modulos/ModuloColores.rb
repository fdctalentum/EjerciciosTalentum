module ModuloColores
  ROJO = "255,0,0"
  VERDE = "0,255,0"
  AZUL = "0,0,255"
  
  def ModuloColores.getRGB(rojo,verde,azul)
    "(#{rojo},#{verde},#{azul})"
  end
end