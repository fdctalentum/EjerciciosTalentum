load 'modelo/Persona.rb'
load 'dao/LogNuevoDAO.rb'
load 'dao/PersonasDAO.rb'
load 'negocio/GestionPersonasLN.rb'

puts "Inicializando..."

negocio = GestionPersonasLN.new(PersonasDAO.new,LogNuevoDAO.new)
negocio.guardarPersona(Persona.new)
miArrayDeIds = [3,4]
negocio.borrarPersonas miArrayDeIds
persona = negocio.buscarPesona 1
puts persona.nombre