#Esta será la clase Main que utlizaremos para las pruebas.
#Lo primero que haremos será cargar las diferentes clases que vamos a necesitar, en el orden correcto, ya que unas se necesitan a otras.

load 'modelo/Libro.rb'
load 'negocio/GestionBiblioteca.rb'
load 'dao/BibliotecaDAO.rb'

#Creamos gestorBiblioteca, que usaremos para utilizar los métodos más adelante
gestorBiblioteca = Biblioteca::Negocio::GestionBiblioteca.new(Biblioteca::Dao::BibliotecaDAO.new)

#### 1- Cuatro altas de libros. Vamos crear incluso variables para titulo,autor y descripción para hacerlo limpio y ordenado.

titulo1 = "Fray Perico y su Borrico"
titulo2 = "Fray Perico en la guerra"
titulo3 = "Los origenes de Fray Perico"
titulo4 = "Vida y Obra de Fray Perico"

autor1 = "Monje Sacristán"
autor2 = "Hermano Emilio"
autor3 = "Sor Pellízquitos"
autor4 = "Kalikatres Sapientísimo"

desc1 = "Las andanzas de un fraile bonachón que un día compró un burro"
desc2 = "A nuestro querido fraile un día le llamaron en la guerra para encontrar al hermano perdido de otro fraile"
desc3 = "Fray Perico tuvo unos inicios, y fueron duros"
desc4 = "Una retrospectiva sobre los logros de una leyenda"

#Una vez creadas las variables con sus respectivos strings, es hora de crear los 4 libros
libro1 = Biblioteca::Modelo::Libro.new titulo1, autor1, desc1
libro2 = Biblioteca::Modelo::Libro.new titulo2, autor2, desc2
libro3 = Biblioteca::Modelo::Libro.new titulo3, autor3, desc3
libro4 = Biblioteca::Modelo::Libro.new titulo4, autor4, desc4

#Una vez creados, los insertamos con la función insertar
gestorBiblioteca.insertar libro1
gestorBiblioteca.insertar libro2
gestorBiblioteca.insertar libro3
gestorBiblioteca.insertar libro4

#Para dejarlo todo un poco más presentable, hacemos un título y además comprobamos con el size del array los libros que hay insertados
#Las id nos sirven también como referencia.

puts "-------Bienvenido a la biblioteca--------"
puts "\n--------Actualmente hay #{gestorBiblioteca.listar.size} libros---------"

### 2- Listamos todos los libros con el método listar
puts gestorBiblioteca.listar

### 3 - Borramos un libro. Utilizaremos el título

libroaBorrar = "Vida y Obra de Fray Perico"
gestorBiblioteca.borrar libroaBorrar

### 4 - Volvemos a listar para comprobar que el libro ha sido borrado
puts "\n--------------------------------"
puts gestorBiblioteca.listar

### 5 - Modificamos un libro. Vamos a crear un nuevo libro

tituloNuevo = "Fray Perico y su Borrico"
autorNuevo = "Alguien Fue"
descNuevo = "En esta ocasión, nuestro fraile se queda en una isla desierta con sólo un palo"

nuevoLibro = Biblioteca::Modelo::Libro.new tituloNuevo, autorNuevo, descNuevo

#Modificamos el libro
gestorBiblioteca.modificar nuevoLibro.titulo,nuevoLibro
puts "\n--------------------------------------------------"

# 6 - Volvemos a listar
puts gestorBiblioteca.listar