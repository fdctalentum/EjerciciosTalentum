#variables
#no empiezan con ninguna palabra reservada (como var o algo así).Son arbitrarias y deben empezar '_' o por una letra.

variable1 = 1
puts variable1
variable2 = 2
puts variable2

sVariable = "Variable de texto"
iVariable = 3

puts sVariable,iVariable #La coma nos hace un salto de línea. Ojo, sin espacios.

puts "El valor de la variable sVariable es: "+sVariable 

#Estamos diciendole que la variable numérica la pase a variable tipo string porque de otra forma no podríamos concatenar string con numero. Tipo Fixnum                   
puts "El valor de la variable iVariable es: "+iVariable.to_s 

#De esta forma es como concatenar,y se puede meter cualquier cosa dentro de #{}
puts "El valor de la variable sVariable es: #{sVariable}" 
puts "El valor de la varaible iVariable es: #{iVariable}"

#podemos declarar strings con comillas simples. Con comillas simples las variables no se expanden. Lo muestra todo literal
puts 'El valor de la variable sVariable es #{sVariable}'

#podemos inicializar las variables a nil (la nada, atreyu)
variable = nil
puts "El valor de la variable sVariable es: #{variable}" 

#Por convenciones el nombre de las variables de suelen poner en camel case o en snake case
#camel case --> estoEsUnaVariable
#snake case --> esto_es_una_variable


#Constantes
#Se declaran poniendo la primera letra en mayúscula
#Ruby es un lenguaje case sensitive
EstoEsUnaConstante = "Felipe"
Constante = "Ramon"
Constantedelamuerte = "Pepe"

#Normalmente por convención, las constantes van todas en mayúscula y en snake case
CONSTANTE = "Isabel"
CONSTANTE_DE_LA_MUERTE = "Penny"

puts CONSTANTE_DE_LA_MUERTE
puts "La constante es: #{CONSTANTE_DE_LA_MUERTE}"

#En Ruby, las constantes no se pueden cambiar la referencia. Te deja cambiar el valor, aunque nos daría un warning.
#Normalmente en otros lenguajes, no se puede cambiar.

#Tenemos también algunas pseudo variables. Son variables predefinidas. 

puts __FILE__ #Nos dice la ruta del fichero

puts __LINE__ #Nos dice las líneas que llevamos

#Acumulaciones

valor1 = 3
valor1 = valor1 + 5
valor1 += 5 #De esta manera acortamos, pero hace la misma función que el anterior

puts valor1
valor1 -= 3 
puts valor1
valor1 *= 2
puts valor1
valor1 /= 2
puts valor1
valor1 %= 2
puts valor1

#Cosas equivalentes 
valor1 = "pepe"
valor1 += " te saludo"
puts valor1


valor1 = nil
#En caso de que no esté asignado un valor a la variable se establece el valor 8
#En caso contrario, es decir, que ya esté asignado, no se cambiará el valor
valor1 ||= 8
puts valor1
valor1 ||= 12
puts valor1

#En ruby podemos hacer aisgnaciones multiples
valor2 = valor3 = valor4 = 98
puts valor2,valor3,valor4

#Todas estas variables que hemos visto hasta ahora son variables de tipo local.
#Ruby también soporta variables globales. Es decir, que son visibles desde cualquier parte de nuestro programa.
#Se declaran con el símbolo $ delante
$variableGlobal = 50
puts "El valor de la variable global es: #{$variableGlobal}"

#Tipos básicos en ruby

tipoFixnum = 3
#también tenemos bignum, que es mucho más grande que fixnum (más rango), no tenemos porque preocuparnos 
#por las conversiones ya que ruby lo hace automático
tipoString = "Literal"
tipoFloat = 3.0 #poniendo un '.'
tipoTrue = true
tipoFalse = false
puts tipoFixnum.class
puts tipoString.class
puts tipoFloat.class
puts tipoTrue.class
puts tipoFalse.class
tipoNil = nil
puts tipoNil.class #hasta nil(nulo) es un objeto

#Conversiones

puts "El numero " + 3.to_s
puts "3".to_i + 5 #Convertimos el string 3 a integer para sumarlo con el otro número
puts "3Pepe".to_i + 10 #Sigue convirtiendo, porque el número está primero
puts "pepe3".to_i + 10 #Si no puede convertir el string a integer (hemos puesto antes las letras que el número), te devuelve un 0
puts 3.to_f #Convierte el 3 en float (decimal)
puts 2 + 3 * 5 #Así nos daría 17, primero va la multiplicación
puts "#{(2 + 3) * 5}" #Así nos daría 25
# puts 2 / 0 daría un error de división por cero
puts 2.0 / 0 #Al poner el 2 como float, nos daría Infinity





