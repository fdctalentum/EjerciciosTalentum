
#Un hash es una colección de datos que mantiene una estructura clave => valor. Los hashes Son conocidos como Arrays asociativos. Los arrays son indexados, es la diferencia.

#Creamos un hash vacío
hash = {}
otroHash = Hash.new #Se crearía igual, mediante la clase

#Añadir elementos
hash["clave"] = "valor"
hash["otraclave"] = 3

#Recuperar elementos
puts hash["clave"] #Recuperamos el valor que almacenamos
puts "El valor de la otraclave es #{hash["otraclave"]}"

#Sólo se admite una clave para un valor dado
#Si repitiéramos una clave se cambiaría el valor
hash["clave"] = "otro valor"
puts hash["clave"]

#podemos inicalizar un hash con valores
otroHash = {"clave1" => "valor1", "clave2" => "valor2"}
puts otroHash
puts otroHash["clave2"]

#Para poner claves en un hash, Ruby recomienda el uso de los símbolos Ej: ':simbolo'
hashSimbolos = {:clave1 => "valor1"}
puts hashSimbolos[:clave1]
hashSimbolos[:clave2] = "valor2"
hashSimbolos[:clave3] = "valor3"
puts hashSimbolos[:clave3]

unless hashSimbolos[:clave4]
  puts "El valor no existe"
end

if !hashSimbolos[:clave4]
  puts "El valor sigue sin existir"
end

#Los símbolos son inmutables y únicos en todo el programa. Inmutable quiere decir que una vez los atributos hayan sido establecidos, no se pueden cambiar
variable1 = "valor1"
variable2 = "valor1"

if variable1 == variable2
  puts "Tienen el mismo valor"
end

#'equal?' compara posiciones de memoria
if variable1.equal? variable2
  puts "el mismo obejto"
else 
  puts "distinto objeto"
end

#Convertimos un string a símbolo
hash[variable1.to_sym] = "Otra cosa"
puts hash[:valor1]

if variable1.to_sym.equal? variable2.to_sym
  puts "Son iguales los símbolos"
end

#Podemos meter arrays dentro de hashes, evidentemente. Entra todo.
hashEquipos = {}
hashEquipos[:madrid] =  ["C.Ronaldo","Casillas","Raúl"]
hashEquipos[:rayo] = ["Trashorras","Embarba","Lass"]
hashEquipos[:barcelona] = ["Enano Dopado","Mordedor","PadredeNeymar"]

for jugador in hashEquipos[:barcelona]
    puts jugador  
end
puts "-----------"
#Podemos mostrar un array con todas las claves del hash
puts hashEquipos.keys.inspect #para que no salgan saltos de línea y salga más ordenado
#Podemos mostrar un array con todos los valores del hash
puts hashEquipos.values.inspect

puts "----- Equipos de la liga Talentum -----"
for equipo in hashEquipos.keys
  puts "- Equipo: #{equipo.capitalize}"
 for jugador in hashEquipos[equipo]
  puts "-- Jugador: #{jugador}"
 end 
end