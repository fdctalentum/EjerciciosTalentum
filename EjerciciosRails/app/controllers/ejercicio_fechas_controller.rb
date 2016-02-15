class EjercicioFechasController < ApplicationController
  
  def getFechaActual
    fechaAux = Time.now
    #%d representa el día
    #%m representa el mes
    #%Y representa el año
    #%H representa la hora en 24h
    #%M representa los minutos
    #%S representa los segundos
    #%h pondría el mes en letras 
    @fechaActual = fechaAux.strftime("%d/%h/%Y %H:%M:%S")
  end
  
end
