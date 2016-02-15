class Dao
  
  @@usuarios = {}
  
  def self.insert usuario
    u = usuario.usuario
    c = usuario.contraseña
    busqueda = @@usuarios.select{|user| user.usuario == u}
    if busqueda.size > 0
       return false
    else
        @@usuarios[:u] = "c"
        return true
    end
      
  end
  
  def check usuario,contraseña
    for user in @@usuarios.usuario
      if user == usuario
          
      end
    end
    
   
  end
  
  def list
    @@usuarios
  end
  
  
  
end