
#Las excepciones son errores que ocurren en tiempo de ejecución y que pueden romper la ejecución del programa

def lanzarExcepcion
  puts "Antes de lanzar la excepción"
  #Lanzamos un error
  raise "Ha ocurrido un error inesperado"
  puts "Después de lanzar una excepción"
end

lanzarExcepcion
puts "Después de llamar a lanzar excepción"

