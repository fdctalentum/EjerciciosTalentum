class Pelicula < ActiveRecord::Base

  validates_uniqueness_of :titulo, message: 'El título ya existe'
  validates_numericality_of :year, greater_than: 1850, message: 'No hay peliculas tan viejas, me engañas'
  validates_presence_of :year,:titulo,:genero, message: 'El campo no puede estar vacío'
  
end
