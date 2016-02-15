class FechaController < ApplicationController

def getFecha
  puts "Entrando en el método fecha"
  #De la siguiente forma se podría embeber el html. Es un poco lío y además estamos mezclando vista y controlador, pero por probar, está bien.
  fechaAux = Time.new.to_s
  @fecha = "<span>#{fechaAux}</span>".html_safe
  #Modo correcto es con now
  @fecha2 = Time.now
end

end
