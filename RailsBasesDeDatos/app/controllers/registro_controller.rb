class RegistroController < ApplicationController
  
  def new
    #Registro.all nos devuelve todos los registros de la base de datos
    #Al heredar de ActiveRecord, estarán automaticamente implementados sus accessors.
    #Los registros van en un array
    @registros = Registro.all
    if @registros.size > 0
      puts @registros[0].titulo
      puts @registros.first.id
    end
  end
  
  def create
    titulo = params[:titulo]
    comentarios = params[:comentarios]
    parametrosHash = {}
    #La clave corresponde con el nombre de la columna de la base de datos 9
    parametrosHash[:titulo] = titulo
    parametrosHash[:comentarios] = comentarios
    
    #Le pasamos el hash    
    @registro = Registro.create(parametrosHash)
    #Registro.create puede devolverme errores en caso de que haya habido algún error al insertar
    if @registro.errors.any? then
      puts "BDERROR: Error"
    end
    @registros = Registro.all
    render "new"
  end
  
  
  def delete
    titulo = params[:titulo]
    #id = params[:id].to_i
    #El método delete borra por id. También le podemos pasar un array de ids y también lo borra
    #Registro.delete id
    #Podemos también borrar por otros campos, pero deberemos hacer una búsqueda primero
    #Esto nos devuelve una lista de coincidencias
    registrosEncontrados = Registro.where(:titulo => titulo)
    registro = registrosEncontrados.first
    registro.destroy
    
    @registros = Registro.all 
    render "new"
  end
  
  def modificar_vista
    @registro = nil
    id = params[:id].to_i
    @registro = Registro.find id
  end
  
  def modificar
    id = params[:id].to_i
    titulo = params[:titulo]
    comentarios = params[:comentarios]
    
    hash = {}
    hash[:id] = id
    hash[:titulo] = titulo
    hash[:comentarios] = comentarios
    
    @registro = Registro.find id 
    update = @registro.update_attributes(hash)
    #update contiene un boolean de si ha ido bien o no
    #registro contiene el activeRecord con los posibles errores
    if update
      puts "Registro actualizado" 
      @registros = Registro.all
      render :new
    else 
      puts "Registro no actualizado"
      render :modificar_vista
    end
  end
  
  def buscar_por_comentario
    comentarios = params[:comentarios]
    @registrosEncontrados = Registro.where(["comentarios LIKE ?", "%#{comentarios}%"])
    render :busquedas
  end
  
end
