#Esta línea fallaría debido a que todavía no hemos definido el método
# metodo()

#Los métodos en ruby se crean mediante la palabra reservada 'def'

def metodo
  puts "Hola metodo"
end

metodo

#Si damos a un método el mismo nombre que otro anterior, sobreescribimos el anterior

def metodo
  puts "Hola metodo 2"
end

metodo

#Parámetros de entrada
def saludar(nombre,apellidos)
  puts "Hola #{nombre} #{apellidos}!"
end

#No hace falta poner parentesis, los parámetros van separados por comas
saludar "Felipe","Domínguez" #Metemos los dos valores separados por comas. Esta vez no salta la línea, ya que es un método

#valores de retorno. No hace falta poner return. Aunque también se puede poner, es como Jesse Jane, se lo traga todo. Bukkake de la programación. 
#Por defecto nos devuelve la última línea de ejecución. 
def devolverSaludo
  puts "devolverSaludo -> Entrando en el método"
  "Hola devolverSaludo"
end

valorDeRetorno = devolverSaludo
puts valorDeRetorno

#En Ruby podemos dar valores por defecto a los parámetros. Estamos inicializando únicamente valor2 a 0.
#Lo que es lo mismo, seguimos teniendo la necesidad de mandar un parámetro pero el segundo es optativo
def sumar(valor1,valor2=0)
  valor1 + valor2
end

#Se puede utilizar de varias formas:

puts sumar 2,2

puts "El resultado es: #{sumar 55,127}"

valor1 = 34
valor2 = 56

puts "El resultado es: #{sumar valor1,valor2}"

#Como solo le paso el valor1, coge el valor por defecto (0)
puts "El resultado es: #{sumar valor1}"

def sumar(valor1,valor2=0,valor3)
  puts "#{valor1},#{valor2},#{valor3}"
  valor1+valor2+valor3
end

puts sumar 2,5
puts sumar 3,3,3

variableExterna = 1

def metodo
  #La siguiente línea da error ya que no hay visibilidad desde el main al método 
  #puts "La variable externa #{variableExterna}"
  variableInterna = "Pepe"
  puts "La variable interna #{variableInterna}"
end

metodo

def metodo(*valores)
  puts valores #Sacamos todos los valores que pongamos
  puts "------" #Sólo con llamar al metodo sacaríamos esto
  puts valores[0] #valores es un array, scamos la posición 0
end

metodo "hola","como estás","yo bien","etc"
metodo


def sumaCompleta(*valores)
  resultado = 0
  
  for valor in valores
    #resultado = resultado + valor
    resultado+= valor
  end
    #return resultado
    resultado
end

puts sumaCompleta 1,3,6,7,8
puts sumaCompleta 99,23
puts sumaCompleta






