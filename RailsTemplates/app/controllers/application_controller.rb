class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_action :procesar_antes_de_nada
  after_action :procesar_despues_de_todo
  
  def procesar_antes_de_nada
    puts "********* Llamada a la aplicación **********"
    @nombreUsuario = "Felipe"
    @tiempoInicial = Time.now 
  end
  
  def procesar_despues_de_todo
    @tiempoFinal = Time.now
    tiempoProcesamiento = (@tiempoFinal - @tiempoInicial) * 1000
    puts "********* Fin del procesamiento #{tiempoProcesamiento}**********"
  end
end
