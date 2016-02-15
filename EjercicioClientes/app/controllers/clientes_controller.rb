class ClientesController < ApplicationController
  
  def alta
    cliente = Cliente.new
    cliente.nombre = params[:nombre]
    cliente.apellidos = params[:apellidos]
    cliente.edad = params[:edad]
    cliente.telefono = params[:telefono]
    dao = DaoCliente.new
    dao.alta cliente
    @clientes = dao.getClientes
    render :index  #Vale igual que ponerlo entre comillas
  end
  
  def detalle
    id = params[:id].to_i
    @cliente = DaoCliente.new.getClienteById id
  end

  def index
    dao = DaoCliente.new
    @clientes = dao.getClientes
  end
  
  def borrar
    id = params[:id].to_i
    dao = DaoCliente.new
    @clientes = dao.borrar id
    @clientes = dao.getClientes
    render :index
  end
  
  def modificar
    id = params[:id].to_i
    @cliente = DaoCliente.new.getClienteById id     
  end
  
  def procesarModificar
    
    id = params[:id].to_i
    dao = DaoCliente.new
    nombre = params[:nombre]
    apellidos = params[:apellidos]
    edad = params[:edad]
    telefono = params[:telefono]
    @cliente = dao.getClienteById id
    @cliente.nombre = nombre
    @cliente.apellidos = apellidos
    @cliente.edad = edad
    @cliente.telefono = telefono
    @clientes = dao.getClientes
    render :index 
    
  end
  
end
