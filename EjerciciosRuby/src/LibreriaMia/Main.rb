load 'modelo/Libro.rb'
load 'dao/BibliotecaDAO.rb'
load 'negocio/GestionBiblioteca.rb'


gestorBiblioteca = Biblioteca::Negocio::GestionBiblioteca.new(Biblioteca::Dao::BibliotecaDAO.new)

libro1 = Biblioteca::Modelo::Libro.new("Lo que el viento se llevó","Su Padre","Erase una vez un lobo y tal")
libro2 = Biblioteca::Modelo::Libro.new("100 years de soledad","Gabriel García Marquez","Una familia que va y tal")
libro3 = Biblioteca::Modelo::Libro.new("Fray Perico y su Borrico","Seguramente Anónimo","Un tío fraile que menudas líaba con sus colegas")
libro4 = Biblioteca::Modelo::Libro.new("El alma al aire","Alejandro Sanz","Le he robado el alma al aire para darsela en este suspiro")

gestorBiblioteca.insertar libro1
gestorBiblioteca.insertar libro2
gestorBiblioteca.insertar libro3
gestorBiblioteca.insertar libro4
     

puts "-------Bienvenido a la biblioteca--------"
puts "----Actualmente hay #{gestorBiblioteca.listar.size} libros----"
puts gestorBiblioteca.listar

gestorBiblioteca.borrar "Fray Perico y su Borrico"
puts gestorBiblioteca.listar

nuevoLibro = Biblioteca::Modelo::Libro.new("Fray Perico el de los palotes","Otro Anónimo","Hace mucho tiempo vivía Goku")

gestorBiblioteca.modificar nuevoLibro.titulo,nuevoLibro
puts "#{gestorBiblioteca.listar.size} libros almacenados" 
puts gestorBiblioteca.listar


