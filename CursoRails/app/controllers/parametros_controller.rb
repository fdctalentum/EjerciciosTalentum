class ParametrosController < ApplicationController
  
  def pasarParametros
    if params[:nombre] && params[:apellidos]
      @saludo = "Hola #{params[:nombre]} #{params[:apellidos]}"
      if params[:nombre1]
         @cositas = "La historia de #{params[:nombre1]} y el chico que tanto amaba, eran más felices cuantos más años pasaban..." 
      else 
          @cositas = "Voy a contarte una historia si me pones un nombre encima"
      end
    else
      @saludo = "Hola desconocido"
      @cositas = "Vaya, no hay historia para tí.A no ser que me pongas tu nombre"   
    end
   
  end
end
