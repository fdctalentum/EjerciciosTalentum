class Registro < ActiveRecord::Base
 
  #Con esta línea validamos que no podamos meter en base de datos un título que esté vacío
  validates_presence_of :titulo, message: 'Error: El título no puede estar vacío'
  #podemos validar porque no se repita un campo
  validates_uniqueness_of :titulo, message: 'Error: El título debe ser único'
  #podemos hacer validaciones de tamaño. Con within hacemos el rango de 5 a 200
  validates_length_of :comentarios, :within => 5..200, message: 'Error: El comentario debe tener entre 5 y 200 caracteres'
  #podemos utilizar otras opciones como-> 
  # -> :minimum, que establece un tamaño mínimo
  # -> :maximum, que establece un tamaño máximo
end
