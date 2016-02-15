module CargaModelos
load 'modelo/Ordenador.rb' #A la hora de cargar, hay que cargar primero los archivos que se vayan a usar antes en el orden jerárquico de clases. El primero sería ordenador.
load 'modelo/Precio.rb'
load 'modelo/Procesador.rb'
load 'modelo/Ram.rb' 
load 'modelo/DiscoDuro.rb'
load 'modelo/Tgrafica.rb'
load 'modelo/PlacaBase.rb'
load 'modelo/Pantalla.rb'
load 'modelo/TarjetaRed.rb' #Tarjeta de red iría delante de dirección, si no, no funcionaría
load 'modelo/Direccion.rb'
load 'modelo_persona/Agenda.rb' #Agenda iría antes
load 'modelo_persona/Contacto.rb'
load 'modelo_persona/Direccion.rb'
end