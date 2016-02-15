#Este será el módulo de la capa de negocio. Aquí crearemos la clase GestiónBiblioteca, 

module Biblioteca
  module Negocio
    class GestionBiblioteca
      
      #Aquí recibiremos el dao creado y lo inicializamos.
      def initialize (dao)
        @librosDao = dao
      end
      
      #Insertamos el libro
      def insertar(libro)
        @librosDao.insert libro
      end
      
      #Borramos el libro. Recibimos el título
      def borrar(titulo)
        @librosDao.delete titulo
      end
      
      #Actualizamos el libro recibiendo los dos parámeros de título del libro que vamos a borrar, y nuevo libro a guardar
      def modificar(titulo,nuevoLibro)
        @librosDao.update titulo,nuevoLibro
      end
      
      def listar
        @librosDao.list 
      end
      
    end
  end
end