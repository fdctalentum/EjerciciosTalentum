puts "Hola mundo!","hola"
puts "Hofasñklajñsdkl"
#puts añade un salto de línea tras cada cadena
print "Hola mundo",", hola"
print "hola"
puts 2
puts 5


#No queremos comer a menos que tengamos hambre
hambre = false
unless hambre
  puts "Hacer otra cosa, que no tenemos hambre"
else 
  puts "Comer algo"
end

puts "Escribe una cosa"

var = gets #Se puede poner gets y punto
puts "hola "+var+"sin el chomp se va a otra linea"

puts "Escribe algo"
variable1 = gets.chomp # El Chomp elimina el salto de línea al final de la cadena

puts variable1

puts "otra cosa"
variable2 = gets.strip #Elimina los espacios en blanco de una cadena por ambos lados

puts variable2
#print no lo hace, y además no salta de línea, como podemos comprobar, tras cada print,no hay espacio ni línea. Tras el puts si.

#Esto es un comentario en ruby
=begin
  Esto es un comentario en varias líneas. 
  Empieza con "=begin"
  y acaba con "=end" 
=end


