load 'Modelo/Libro.rb'                                                                                                                                                                                                                                  
load 'Dao/LibroDAO.rb'
load 'Negocio/GestionLibrosLN.rb'
#TODO: Encapsular clases (Modulos)
def generarMenu
  puts "\t\t********Menu********"
  puts "\t1. Alta libro. \n\t2. Baja libro. \n\t3. Modificar libro. \n\t4. Listar libros. \n\t5. Salir"
  print ":>"
end

puts "Inicializando..."

negocio = GestionLibrosLN.new(LibroDAO.new)

begin

  generarMenu
  respuesta = gets.to_i

  case respuesta 
  when 1 then
    puts "Introduzca el título del libro:"
    titulo = gets.strip
    puts "Introduzca el autor del libro:"
    autor = gets.strip  
    puts "Introduzca descripción del libro:"
    descripcion = gets.strip  
    negocio.altaLibro(Libro.new(titulo,autor,descripcion))
  when 2 then
    puts "Introduzca el id de los libros que desea dar de baja:"
    arrayIdLibros = [gets.to_i]
    negocio.bajaLibros(arrayIdLibros)
  when 3 then
    puts "Introduzca el id del libro a modificar"
    id = gets.to_i
    puts "Introduzca el nuevo titulo"
    titulo = gets.strip
    puts "Introduzca el nuevo autor"
    autor = gets.strip
    puts "Introduzca la nueva descripción del libro:"
    descripcion = gets.strip  
    libroActualizado = Libro.new(titulo, autor,descripcion, id)
    negocio.modificarLibro(libroActualizado) #TODO: Preguntar a usuario que quiere modificar y que no
  when 4 then
    puts negocio.listarLibros
  when 5 then
    puts "Saliendo del programa. Pa que te sales!" 
  end
    #TODO: Funcion Buscar uno o más libros por título o autor o id (Despues implementar en función de baja)
end while respuesta != 5    
    
    
