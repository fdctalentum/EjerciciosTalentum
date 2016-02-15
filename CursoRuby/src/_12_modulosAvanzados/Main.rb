load 'agenda/modelo/Persona.rb'
load 'videoclub/modelo/Persona.rb'
load 'agenda/negocio/GestionPersonas.rb'

personaAgenda = Agenda::Modelo::Persona.new
personaVideoclub = Videoclub::Modelo::Persona.new

personaAgenda.edad = 34
personaAgenda.nombre = "Pepe"

personaVideoclub.dni = "356564646U"
personaVideoclub.nombre = "Ramón"