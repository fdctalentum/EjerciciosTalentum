load 'negocio/Calculadora.rb'

valor1 = true
array = []

def generarMenu
  puts "Opere usted, si no, escriba salir"
  puts "Truco: usa + , - , * y /"
  print ":> "
end

generarMenu

operador = gets.strip
operador.split

if operador[1] == "+" then
  resultado = Calculadora.suma operador[0].to_i,operador[2].to_i
  puts "El resultado es #{resultado}"
elsif operador[1] == "-" then
  resultado = Calculadora.resta operador[0].to_i,operador[2].to_i
elsif operador[1] == "*" then
  resultado = Calculadora.multiplicacion operador[0],operador[2]
elsif operador[1] =="/" then
  resultado = Calculadora.division operador[0],operador[2]
else 
  puts "Operación inválida. Pon un signo bueno tío"
end

