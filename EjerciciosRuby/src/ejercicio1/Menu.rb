puts "\t"*2+"MENU" #usamos \t para tabular...usamos *2 para multiplicar la tabulación por 2.Y concatenamos con el string menú
puts "-" * 40      #usamos un guión en un string y lo multiplicamos por 40...eso nos dará nuestra línea de guiones.


vO1 = 1
vO2 = 2
vO3 = 3

OPCION_DE = " - Opción de"

puts "#{vO1}#{OPCION_DE} Mostrar"
puts vO2.to_s + OPCION_DE + " Borrar" #Otra forma de hacerlo, concatenando. El vO2 lo pasamos a string con to_s
puts "#{vO3}#{OPCION_DE} Actualizar"

