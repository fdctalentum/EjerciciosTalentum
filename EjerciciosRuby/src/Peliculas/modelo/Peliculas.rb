class Peliculas
  
  attr_accessor :id, :titulo, :director, :actores
  
  def initialize (titulo, director, actores, id= nil)
    
    @titulo = titulo
    @director = director
    @id = id
    @actores = actores
  end 
  
  def to_s
    "#{@id} - #{@titulo} de #{@director}. Actores: #{@actores}"
  end
     
  
end