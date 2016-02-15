class AltaclienteController < ApplicationController
  
  def procesarAlta
    
    cliente = crearObjetoCliente
    negocio = NegocioCliente.new(DaoCliente.new)
    negocio.darAlta cliente
    @cliente = negocio.listar.values
    render "index"
  end
  
  
  private
  def crearObjetoCliente
    
    cliente = Cliente.new
    cliente.nombre = params[:nombre]
    cliente.apellido = params[:apellido]
    cliente.edad = params[:edad]
    return cliente
    
  end
  
  
  
end
