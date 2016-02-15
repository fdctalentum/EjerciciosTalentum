#Los bloques NO son objetos y por tanto no pueden ser manipulados, es decir, no tienen métodos asociados al mismo
#Los procecidimientos SI son objetos y por tanto tienen métodos asociados a ellos. 
#El objetivo principal es evitar el repetir bloques

proc = Proc.new {
  |v|
    puts "Esto es un procedimiento con la variable #{v}"
}

#Esto lo interpretaría como un hash -> proc = {|v| puts "Esto que es"}

#Con el método 'call' invocamos el bloque
proc.call 3
proc.call
proc.call 3,4
proc.call(3)

3.times{
  puts "hola"
}


3.times(&proc)
