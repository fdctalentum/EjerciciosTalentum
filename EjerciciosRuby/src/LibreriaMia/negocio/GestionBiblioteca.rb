module Biblioteca 
  module Negocio #Capa de negocio que hará todas las operaciones
    class GestionBiblioteca
      
      def initialize dao   #Inicializamos el dao ya que trabajaremos con él
        @librosDao = dao
      end
      
      def insertar libro  #Método insertar libro 
            @librosDao.insert libro
      end
      
      def borrar titulo #Método borrar libro. Recibiremos el título y ejecutaremos la función delete
        @librosDao.delete titulo
      end
      
      def modificar titulo,nuevoLibro #Método modificar. Llamamos al método ya creado en dao y le damos el título que queremos modificar y el nuevo libro.
        @librosDao.update titulo,nuevoLibro
      end
      
      def listar
        @librosDao.list #Listamos el contenido
      end
      
    end
  end
end