
#Un bloque es una porción de código encerrada entre llaves {} o entre do..end
#El bloque sólo puede aparecer después de usar un método. Dicho método debería estar decalarado para usar dicho bloque.

#Se puede metiendolo entre llaves 
3.times {
  puts "Hola bloque"
}

#O bien metiendolo entre el do..end
3.times do
  puts "Hola times con do...end"
end

#En los bloques también podemos poner una variable. #En el caso del metodo 'times' representará cada una de las iteraciones. 

array = ["Pepe","pepin","pepon"]
array.size.times {
 |var|
    puts "hola time, vamos por la iteración #{var} y el valor es #{array[var]}" 
}

#Más métodos que aceptan bloques
#La formula de lo siguiente sería (3-0) + 1. Es decir que esto se ejecutaría 4 veces.
0.upto 3 do 
  |var|
  puts "Hola upto #{var}"
  puts "hola array #{array[var]}"
end 

#más metodos.
puts "-----------"
array = [1,"hola",3,"adios",true,"pepito",[1,2,3]]
array.each {
  |var| #Contendrá cada uno de los elementos del array
   puts "Valor del array #{var}"
}

array.each_with_index {
  |valor, indice|
      puts "El valor del índice #{indice} es #{valor}"
}

load "../_04_clases/Persona.rb"
arrayPersonas =  [Persona.new("332656056","Felix","Pocoymal",36),Persona.new("6565656","Pepe","Mucho",45)]
#El select va a devolver un valor que coincida con la condición 
resultado = arrayPersonas.select{
  |persona| #Cada var es una persona, renombramos a persona
    persona.nombre == "Pepe"
}
puts resultado

puts "--------------------------------------"
puts "--- borrar elemento con condición ----"

arrayPersonas.delete_if{
  |persona|
    persona.nombre.downcase == "Pepe".downcase
}

puts arrayPersonas
puts "\n******-------Seguimos con los putos bloques...---------********"

#Todos los métodos pueden recibir un bloque como argumento implícito pudiendo invocar dicho bloque en cualquier momento de nuestro código
#usando la palabra reservada 'yield'
puts "---------"
def metodo
  puts "Esto es un método de ejemplo"
  yield 
end

metodo{
  puts "Esto es un bloque de ejemplo"
}

def metodo
  puts "Esto es otro método de ejemplo"
  variable = "valor1"
  yield variable
end

metodo{
  |var|
   puts "Esto es otro bloque de ejemplo con el parámetro #{var}"
}

def metodo parametro
  puts "Esto es otro método MAS de ejemplo"
  yield parametro
end

metodo("Pepe"){
  |var|
    puts "Esto es otro bloque de ejemplo con el parámetro #{var}"
}
metodo("Felix"){
  |var|
    puts "Esto es otro bloque de ejemplo con el parámetro #{var}"
}




