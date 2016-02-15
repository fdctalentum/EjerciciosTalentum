#El objetivo de este DAOpersonas es PERSISTIR/GUARDAR/ALMACENAR. Podría haber clase dao de base de datos, ficheros, memoria...la clave es la persistencia de datos.

class PersonasDAO
  #Almacen persistente
  @@almacenPersonas = [] #Es un array en el que guardaremos las personas
  @@id = 1
  
  def insert(persona)
   persona.id = @@id
   @@id+=1
   @@almacenPersonas << persona #Guardamos persona en el array
  end
  def update(persona)
    #Obtengo el id de la persona a actualizar
    idABuscar = persona.id
    #Busco el id en el arrayPersonas
    i=0
    for personaActual in @@almacenPersonas
      if idABuscar == personaActual.id then
        @@almacenPersonas[i]=persona #Sustituimos la persona vieja por la nueva
        return
      end
      i+=1
    end
  end
  def delete(idPersona)
    for personaActual in @@almacenPersonas
      if idPersona == personaActual.id then
        @@almacenPersonas.delete personaActual
        return
      end
    end
  end
  def list
    # Devuelvo el array
    @@almacenPersonas
 
  end
end