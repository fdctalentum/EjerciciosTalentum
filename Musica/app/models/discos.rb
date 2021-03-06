class Discos < ActiveRecord::Base
  
  validates_presence_of :album, message: 'Error: El campo album no puede estar vacío '
  validates_presence_of :artista, message: 'Error: El campo artista no puede estar vacío'
  validates_presence_of :year, message: 'Error: El campo año no puede estar vacío'

  validates_uniqueness_of :album, message: 'Error: Ya hay un disco con este nombre'

  validates_numericality_of :year, :greater_than_or_equal_to => 1000, message: 'Error: El año no puede ser menor que 1000' 
  
end
