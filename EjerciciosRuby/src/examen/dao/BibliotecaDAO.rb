#Este módulo será el de la persistencia. Está englobado dentro del módulo Dao, que a su vez pertenece al módulo Biblioteca.
#Crearemos la clase BibliotecaDAO, donde generamos los métodos que más tarde utilizaremos.

module Biblioteca
  module Dao
    class BibliotecaDAO
      
      @@arrayBiblioteca = [] #Creamos el array que será nuestra biblioteca, por defecto vacío.
      @@id = 1  #Creamos un id, que utilizaremos simplemente para asignarselo a cada libro introducido.
      
       #En el método insert recibiremos "libro", y lo introducimos en el array de nuestra Biblioteca.
       def insert(libro)
              libro.id = @@id
              @@id += 1
              @@arrayBiblioteca << libro 
       end
       
       
       #En el método delete eliminamos un libro. Recibimos el título del libro y lo eliminamos si coincide con uno existente.
       def delete(titulo) 
            @@arrayBiblioteca.delete_if{
              |libro|
                  libro.titulo == titulo
            }
       end
       
       #En el método update actualizaremos un libro. Recibimos dos parámetros. El título del libro y el libro nuevo. 
       #Buscaremos con un select dentro del array el título del libro que coincida con el título que recibimos. Lo borramos si lo ha encontrado
       #En este caso encontrarlo implica que el tamaño de la búsqueda que hemso hecho sea mayor que 0. Ya sólo queda insertar el nuevo libro.
       def update(titulo,nuevoLibro)
          busqueda = @@arrayBiblioteca.select {
            |libro|
              libro.titulo == titulo
          }
            delete titulo if busqueda.size > 0
            insert(nuevoLibro)
       end
       
       #En el método list, simplemente mostramos el array de nuestra Biblioteca.
       def list
         @@arrayBiblioteca
       end
      
    end
  end
end