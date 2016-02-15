class NegocioCliente
  
  def initialize dao
    
    @dao = dao
    
  end
  
  def darAlta cliente
    
    @dao.insert cliente
    
  end
  
  def listar
    
    @dao.list 
    
  end
  
end