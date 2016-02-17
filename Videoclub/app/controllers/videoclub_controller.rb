class VideoclubController < ApplicationController

  def index
    @peliculas = Pelicula.all
  end

  def create
    titulo = params[:titulo]
    genero = params[:genero]
    year = params[:year]
    
    hashPelis = {}
    hashPelis[:titulo] = titulo
    hashPelis[:genero] = genero
    hashPelis[:year] = year
    
    @pelicula = Pelicula.create(hashPelis)
     if @pelicula.errors.any? then
        puts "BDERROR: Error"
      end
    @peliculas = Pelicula.all
    render :index
  end
  
  def delete
    id = params[:id]
    Pelicula.delete id
    
    @peliculas = Pelicula.all
    render :index
  end
  
  def update_view
    id = params[:id]
    @pelicula = Pelicula.find id
    @peliculas = Pelicula.all
  end
  
  def update
    id = params[:id].to_i
    titulo = params[:titulo]
    genero = params[:genero]
    year = params[:year]
    
    hashPelis = {}
    hashPelis[:id] = id
    hashPelis[:titulo] = titulo
    hashPelis[:genero] = genero
    hashPelis[:year] = year
    
    @pelicula = Pelicula.find id
    update = @pelicula.update_attributes(hashPelis)
    if update
      @peliculas = Pelicula.all
      @resultado = true
      render :index
    else
      @resultado = false
      render :update_view
    end
    
  end
  
  def searchByTitle
    titulo = params[:valor]
    #Con esta forma estaríamos dando opción a la búsqueda por palabras sin tener que ser exacta. Problema de esto: busca hasta cuando dejas espacios en blanco.
    @encontrados = Pelicula.where(["titulo LIKE ?", "%#{titulo}%"])
    @peliculas = Pelicula.all
    render :index
  end
  
  def searchByYear
    year = params[:valor].to_i
    @encontrados = Pelicula.where(["year LIKE ?", "%#{year}%"])
    @peliculas = Pelicula.all
    render :index 
  end



end
