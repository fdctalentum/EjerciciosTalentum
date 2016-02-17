class LibreriaController < ApplicationController

  def index
    @libros = Libro.all
  end
  
  def crear
    titulo = params[:titulo]
    autor = params[:autor]
    genero = params[:genero]
    
    hashLibros = {}
    hashLibros[:titulo] = titulo
    hashLibros[:autor] = autor
    hashLibros[:genero] = genero
    
    @libro = Libro.create(hashLibros)
      if @libro.errors.any? then
        puts "BDERROR: Error"
      end
    @libros = Libro.all
    render :index
  end
  
  def borrar
    id = params[:id]
    Libro.delete id
    @libros = Libro.all
    render :index
  end
  
  def modificar_vista
    id = params[:id].to_i
    @libro = Libro.find id
    @modificar = true
    @libros = Libro.all
    render :index
  end
  
  def modificar
    id = params[:id]
    titulo = params[:titulo]
    autor = params[:autor]
    genero = params[:genero]
    
    hashLibros = {}
    hashLibros[:id] = id
    hashLibros[:titulo] = titulo
    hashLibros[:autor] = autor
    hashLibros[:genero] = genero
    
    @libro = Libro.find id
    
    update = @libro.update_attributes(hashLibros)
    
      if update
        @libros = Libro.all
        @resultado = true #utilizaré esto para mostrar el resultado de la operación en el html.
        render :index
      else   
        @resultado = false
        @libros = Libro.all
        render :index
      end
    
  end
  
    #Para las búsquedas he decidido que si hacemos Libro.where(:titulo => titulo) estaríamos encontrado sólo el título de la forma en que fue guardado...
    #Con mi forma de hacerlo (con el like) estaríamos encontrando independientemente de no ser exacto.
    #Problema de mi forma: busca hasta con espacios en blanco. 
    #Aún así la prefiero porque de la otra forma puede que no encuentres lo que busques por una mayúscula/minúscula
  
  def buscar_por_genero
    genero = params[:valor]
    @encontrados = Libro.where(["genero LIKE ?", "%#{genero}%"])
    @libros = Libro.all
    render :index
  end
  
  def buscar_por_titulo
    titulo = params[:valor]
    @encontrados = Libro.where(["titulo LIKE ?", "%#{titulo}%"])
    @libros = Libro.all
    render :index
  end
  
  def buscar_por_autor
    autor = params[:valor]
    @encontrados = Libro.where(["autor LIKE ?", "%#{autor}%"])
    @libros = Libro.all
    render :index
  end
  
end
