load 'modelo/Persona.rb'
load 'modelo/Actor.rb'
load 'modelo/Director.rb'
load 'modelo/Pelicula.rb'
load 'dao/PeliculaDao.rb'
load 'modelo/Pelicula.rb'
load 'negocio/PeliculaNegocio.rb'

def comprobarPelicula(insertada)
  if insertada
    puts "La película ha sido insertada"
  else 
    puts "La película no ha podido ser insertada"
  end
end

gestorPeliculas = PeliculaNegocio.new
gestorPeliculas.tamañoMaximo=3
gestorPeliculas.peliculaDao=PeliculaDao.new

titulo = "Matrix"

director = Director.new "Hermanos Wachowski", 45

actores = []
neo = Actor.new "Keanu Reeves","Masculino"
trinity = Actor.new "Carrie Anne Moss","Femenino"
morfeo = Actor.new "Laurence Fishburne", "Masculino"

actores << neo
actores << trinity
actores << morfeo

matrix = Pelicula.new titulo, director, actores 

resultado = gestorPeliculas.insertarPelicula matrix
comprobarPelicula(resultado)
puts gestorPeliculas.listar

#Repetimos el proceso n veces

matrix = Pelicula.new titulo, director, actores 

resultado = gestorPeliculas.insertarPelicula matrix
comprobarPelicula(resultado)
puts gestorPeliculas.listar

matrix = Pelicula.new titulo, director, actores 

resultado = gestorPeliculas.insertarPelicula matrix
comprobarPelicula(resultado)
puts gestorPeliculas.listar

gestorPeliculas.borrar 2

puts gestorPeliculas.listar
