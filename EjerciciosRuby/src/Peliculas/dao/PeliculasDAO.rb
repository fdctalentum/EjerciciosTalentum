class PeliculasDAO
  
  @@almacenPeliculas = [] #Creamos almacen y si lo qusieramos inicializar pondríamos @@almacenPeliculas.new(10)
  @@id = 1 #Creamos id inicializada a 1
  
  def insert(pelicula)
    pelicula.id = @@id 
    @@id+=1 #Incrementamos cada vez insertamos
    @@almacenPeliculas << pelicula #Metemos la película recibida en el almacén
  end
  
  def delete(idPelicula) #Recibimos id de pelicula (o titulo, se puede cambiar, aunque es más dificil)
      for peliculaActual in @@almacenPeliculas #Recorremos el array
         if idPelicula == peliculaActual.id #cuando la id coincida con la pelicula
          @@almacenPeliculas.delete peliculaActual #Borramos la pelicula encontrada
          return
         end
      end   
  end
  def update(pelicula)
    idPelicula = pelicula.id
    i = 0 
     for peliculaActual in @@almacenPeliculas
      if idPelicula == peliculaActual.id
        @@almacenPeliculas[i]=pelicula #Sustituimos la pelicula vieja por la nueva
        return
      end
    i+=1 #Incrementamos el i que se´ria nuestra posición del array en la que insertar la película
    end
    
  end
  
  def list
    #Listamos las peliculas
    if @@almacenPeliculas.length == 0
      return nil
    else
      @@almacenPeliculas
    end
  end
  
  def search(idPelicula)
    #Buscamos las peliculas
    if @@almacenPeliculas.length == 0 then #Este if nos controla que cuando no se hayan metido películas, devuelva nil
      return nil
    else
      for peliculaActual in @@almacenPeliculas
        if idPelicula == peliculaActual.id
          return peliculaActual
        else 
          return nil
        end
      end
     end 
  end
  
end