class Libro < ActiveRecord::Base

  validates_uniqueness_of :titulo, message: ' - Error: El título ya existe'
  validates_presence_of :titulo,:autor, message: '- Error: El campo no puede estar vacío'

end
