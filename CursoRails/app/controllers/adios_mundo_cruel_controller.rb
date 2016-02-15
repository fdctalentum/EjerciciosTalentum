class AdiosMundoCruelController < ApplicationController
  
  #Pasos para generar manualmente un controller:
  # 1 - Crear el archivo adios_mundo_cruel_controller.rb
  # 2 - Crear la vista con la carpeta y el archivo adios_mundo_cruel/despedir.html.erb
  
  def despedir
    puts "Esto es una prueba de generar manualmente un controller"
    @despido = "Adios con el corazón que con el alma no puedo, y al despedirme de tí joder que agusto me quedo"
  end
  
end