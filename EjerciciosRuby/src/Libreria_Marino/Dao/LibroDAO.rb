class LibroDAO  
  #Almacen persistente
  def initialize
    @almacenLibros = []
    @id = 1
  end
def insert(libro)
    #TODO: Guardar libro en almacén libros
    libro.id = @id
    @id += 1
    @almacenLibros << libro
    puts "Inserto libro"
  end
  
  def update(libro)
    #TODO: Obtengo el id del libro a modificar
    idABuscar = libro.id
    #TODO: Busco el id en el array libro
    i=0    
    for libroActual in   @almacenLibros
      if idABuscar == libroActual.id
        #TODO: Sustituyo el libro viejo por el nuevo
          @almacenLibros[i]=libro
        return true
      end
      i += 1
    end
    false
  end
  
  def delete(idLibro)
    
    for libroActual in  @almacenLibros
      if libroActual.id == idLibro then
        #TODO: Borro libro del array
         @almacenLibros.delete(libroActual)
        return
      end
    end  
  end
  
  def list 
    #TODO: Devuelvo el array
     @almacenLibros
  end
end