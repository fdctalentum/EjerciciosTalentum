class GestionLibrosLN
  
  def initialize(dao)
  @librosDao = dao #Inyección de dependencia por constructor
  end
  
  def altaLibro(libro)
    # if @librosDao.list.size >2
    #   puts "No entra más mierda"
     # return nil
     #end
     @librosDao.insert(libro)
  end
  
  def buscarLibro(idLibro)
    listaDeLibros = @librosDao.list
   # TODO: Recorro el array buscando el idLibro
    for libro in listaDeLibros
      if idLibro == libro.id
        return libro
      end
    end
  end
  
  def bajaLibros(arrayIdLibros)
    #TODO: Recorro el array de Libros
    for id in arrayIdLibros do
       @librosDao.delete id       #TODO: En cada iteración @librosDao.delete id     
    end
  end
  
  def modificarLibro(libro)
     @librosDao.update libro    
  end
  
  def listarLibros
     @librosDao.list
  end
  
end