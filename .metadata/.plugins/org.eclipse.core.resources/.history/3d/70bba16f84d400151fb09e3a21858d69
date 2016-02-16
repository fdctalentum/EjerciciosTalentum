class TiendaController < ApplicationController

def index
  @discos = Disco.all
end

def create
  id = params[:id]
  album = params[:album]
  artista = params[:artista]
  año = params[:year]
  
  hashDisco = {}
  hashDisco[:id] = id
  hashDisco[:album] = album
  hashDisco[:year] = año
  
  @disco = Disco.create(hashDisco)
    if @disco.errors.any? then
      puts "BDERROR: Error"
    end
    @discos = Registro.all
    render :index  
end

def search
  
end

def update
  
end

def delete
  
end


end
