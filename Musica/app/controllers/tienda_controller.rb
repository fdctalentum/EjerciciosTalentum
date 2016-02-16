class TiendaController < ApplicationController

def index
  @discos = Discos.all
end

def create
  id = params[:id].to_i
  album = params[:album]
  artista = params[:artista]
  año = params[:year]
  
  hashDisco = {}
  hashDisco[:id] = id
  hashDisco[:album] = album
  hashDisco[:artista] = artista
  hashDisco[:year] = año
  
  @disco = Discos.create(hashDisco)
    if @disco.errors.any? then
      puts "BDERROR: Error"
    end
  @discos = Discos.all
  render :index  
end

def searchByYear
    year = params[:year]
    @encontrados = Discos.where(["year LIKE ?", "%#{year}%"])
    render :busquedas
end

def searchByArtist
    artista = params[:artista]
    @encontrados = Discos.where(["artista LIKE ?", "%#{artista}%"])
    render :busquedas
end

def modificar_vista
    @disco = nil
    id = params[:id].to_i
    @disco = Discos.find id
end

def update 
      id = params[:id].to_i
      album = params[:album]
      artista = params[:artista]
      año = params[:year]
    
      hashDisco = {}
      hashDisco[:id] = id
      hashDisco[:album] = album
      hashDisco[:artista] = artistadb
      hashDisco[:year] = año
    
    @disco = Discos.find id 
    update = @disco.update_attributes(hashDisco)
    #update contiene un boolean de si ha ido bien o no
    #registro contiene el activeRecord con los posibles errores
    if update
      puts "Registro actualizado" 
      @discos = Discos.all
      render :index
    else 
      puts "Registro no actualizado"
      render :modificar_vista
    end
end

def delete
    id = params[:id]
    Discos.delete id
    @discos = Discos.all 
    render :index
end

end