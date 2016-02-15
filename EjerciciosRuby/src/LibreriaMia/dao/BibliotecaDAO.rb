#Aquí irá todo lo que persiste

module Biblioteca #Módulo que engloba a los demás módulos
  module Dao #Módulo persistente
    class BibliotecaDAO
      
      @@arrayBiblioteca = [] #Creamos el array que será nuestra biblioteca, por defecto vacío.
      @@id = 1
      
       def insert(libro)
              libro.id = @@id
              @@id += 1
              @@arrayBiblioteca << libro #Recibimos libro, y lo introducimos en la biblioteca 
       end
       
       def delete(titulo) #Eliminamos libro. Recibimos el título del libro y lo eliminamos si coincide con uno existente.
            @@arrayBiblioteca.delete_if{
              |libro|
                  libro.titulo == titulo
            }
       end
       
       def update(titulo,nuevoLibro)
          resultado = @@arrayBiblioteca.select {
            |libro|
              libro.titulo == titulo
          }
            titulo.delete if resultado.size > 0
            insert(nuevoLibro)
       end

       def list
         @@arrayBiblioteca
       end
             
    end
  end
end