class DaoCliente
  
  @@clientes = {}
  
  def insert cliente
    
    @@clientes[cliente.nombre] = cliente
        
  end
  
  def list
    @@clientes
  end
  
end