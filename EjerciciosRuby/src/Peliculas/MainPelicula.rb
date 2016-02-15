load 'modelo/Peliculas.rb'
load 'dao/LogDAO.rb'
load 'dao/PeliculasDAO.rb'
load 'negocio/GestionPeliculas.rb'

def generarMenu
  puts "    Hola y bienvenidos al mágico almacén de las películas".upcase
  puts "-"*60
  puts "¿Qué quieres hacer?"
  puts "\t1 - Insertar Película \n\t2 - Borrar película por id \n\t3 - Listar las películas \n\t4 - Modificar una película por ID \n\t5 - Buscar pelicula \n\t6 - Salir"
end

negocio = GestionPeliculas.new(PeliculasDAO.new,LogDAO.new)

begin 
  generarMenu
  respuesta = gets.strip.to_i
  
  case respuesta
  when 1 then
    puts "Introduzca el título de la película"
    print ":>"
    titulo = gets.strip.capitalize
    puts "Introduzca el director de la película"
    print ":>"
    director = gets.strip.capitalize
    puts "Introduzca actores de la película"
    print ":>"
    actores = gets.strip.split(", ")
    negocio.insertarPelicula(Peliculas.new titulo, director, actores)
  when 2 then
      puts "Introduzca la id de la película a borrar"
      print ":>"
      arrayPeliculas = [gets.strip.to_i]
      negocio.borrarPelicula arrayPeliculas
  when 3 then
    if negocio.listarPeliculas == nil
      puts "No hay películas que listar"
    else 
      puts negocio.listarPeliculas 
    end
  when 4 then 
    puts "Introduce el id de la película que quieres modificar"
    print ":>"
    id = gets.to_i
    puts "Introduzca el nuevo título"
    print ":>"
    titulo = gets.strip
    puts "Introduzca el nuevo director"
    print ":>"
    director = gets.strip
    puts "Introduzca los nuevos actores"
    actores = gets.strip.split ", "
    negocio.modificarPelicula(Peliculas.new(id,titulo,director,actores)) 
  when 5 then
    puts "Introduce el id de la película que quieres buscar"
    pelicula = gets.strip.to_i
    mostrarPelicula = negocio.buscarPelicula pelicula
    if mostrarPelicula == nil then
       puts "No existe esa película o no existen películas"
    else 
      puts "La película buscada es #{mostrarPelicula}"
      
    end
  when 6 then
    puts "Salimos del programa, gracias por venir"
  else 
    puts "Introduzca una opción válida"
  end    
end while respuesta != 6
  
