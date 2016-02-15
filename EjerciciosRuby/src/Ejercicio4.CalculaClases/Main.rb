load 'Calculadora.rb'

def mostrar(valor)
  puts valor
 end

calculadora = Calculadora.new

mostrar "Qué quieres sumar?"

vsuma1= gets.strip
vsuma2= gets.strip

mostrar "Resultado: #{calculadora.suma vsuma1,vsuma2}"

mostrar "Qué quieres restar?"

vresta1 = gets.strip
vresta2 = gets.strip

mostrar "Resultado: #{calculadora.resta vresta1,vresta2}"

mostrar "Qué quieres dividir?"

vdiv1 = gets.strip
vdiv2 = gets.strip

mostrar "Resultado: #{calculadora.division vdiv1,vdiv2}"

mostrar "Qué quieres multiplicar?"

vmult1 = gets.strip
vmult2 = gets.strip

mostrar "Resultado: #{calculadora.multiplicacion vmult1,vmult2}"

mostrar "Operaciones realizadas con éxito. Vuelva otro día, que estoy cansado"