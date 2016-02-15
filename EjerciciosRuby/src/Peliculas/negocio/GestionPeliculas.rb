#Aquí meteríamos lo que queremos que tenga el menú (borrar, insertar, actualizar...)

class GestionPeliculas
  
  def initialize(dao, log) #Inicializamos la clase y recibimos el dao y el log
    @peliculasDao = dao
    @peliculasLog = log
  end
  
  def insertarPelicula(pelicula) #Hacmeos el primer método, para insertar películas. Recibe la película a insertar
    listaPeliculas = @peliculasDao.list #Listamos las películas basandonos en el método list de peliculasDAO
     #La siguiente condicion literalmente da la vuelta a la condición del dao. Le decimos que cuando devuelva nil, se convierta nuevamente en un array vacío
     #de 0 posiciones. Así la siguiente condición puede funcionar ya que la longitud del array sería 0.
    if listaPeliculas == nil then
      listaPeliculas = []
    end
    if listaPeliculas.length < 3 then #Comprobamos que no se pueden meter más de 10 películas
      @peliculasDao.insert pelicula
      @peliculasLog.generarLog "Película #{pelicula} insertada"
    else
      puts "Tamaño máximo alcanzado, tendrás que borrar si quieres meter más\n"
    end
   
  end
  
  def borrarPelicula(arrayIdPeliculas)
    # Comprobar cuando no exista la película
      for id in arrayIdPeliculas
        @peliculasDao.delete id
        @peliculasLog.generarLog "Película con id#{arrayIdPeliculas} borrada"
      end
   end
  
  def listarPeliculas #Listamos las peliculas
    @peliculasDao.list
  end
  
  def modificarPelicula(pelicula)
    @peliculasDao.update pelicula
    @peliculasLog.generarLog "Película con id #{pelicula} modificada"
  end
  
  def buscarPelicula(idPelicula)
    @peliculasDao.search idPelicula
  
  end
end