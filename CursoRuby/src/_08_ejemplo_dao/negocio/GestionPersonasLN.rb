class GestionPersonasLN
  
  def initialize(dao,log)
    @personasDao = dao
    @personasLog = log
  end
  def guardarPersona(persona)
    @personasDao.insert persona
    @personasLog.generarLog "Persona #{persona} insertada"
  end
  def buscarPesona(idPersona)
    listaDePersonas = @personasDao.list
    #Recorro el array buscando el idPersona
    for persona in listaDePersonas
      if persona.id == idPersona
        return persona
      end
    end
    #Al haber return, cuadno se cumpliera, saldría de la función, por lo que este log sólo entraría cuando no encontrasemos la persona
    @personasLog.generarLog "Persona con id #{idPersona} no encontrada"
    return nil 
  end
  def borrarPersonas(arrayIdPersonas)
    #Recorro el array de personas
    for id in arrayIdPersonas
      @personasDao.delete id
    end
  end
  def actualizarPersona(persona)
    @personasDao.update persona
  end
end
