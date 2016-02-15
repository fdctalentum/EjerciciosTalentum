load 'negocio/Calculadora.rb'

valor1 = true
array = []

def generarMenu
  puts "¿Qué quieres hacer?"
  puts "\t1: Suma \n\t2: Resta \n\t3: Dividir \n\t4: Multiplicar \n\t5: Histórico de operaciones \n\t6: Salir"
  print ":> "
end

#Lo suyo es trabajar con un método estático, no hace falta crear un objeto, se puede usar el método de la clase calculadora. (Con self allí)



########  POR FIN ENTENDÍ LO DEL BEGIN #########
## La forma correcta de interpretarlo es "Haz esto ---- mientras que esta sea la condición" begin - while

#Se puede hacer con un begin - while/until. También con un while.
#begin
#while valor1 == true
loop do
  generarMenu 
  respuesta = gets.strip.to_i
  case respuesta 
  when 1 then
    puts "Primer número:"
    var1 = gets.strip.to_f
    puts "Segundo número:"
    var2 = gets.strip.to_f
    
    puts"Calculando..."
    sleep(1)
    resultado = Calculadora.suma var1,var2
    puts "El resultado de la suma es #{resultado}"
    sleep(1)
    array << "#{array.length+1}. Suma de #{var1} y #{var2}. Resultado #{resultado}"
  when 2 then
    puts "Primer número:"
    var1 = gets.strip.to_f
    puts "Segundo número:"
    var2 = gets.strip.to_f
    
    puts "Calculando..."
    sleep(1)
    resultado = Calculadora.resta var1,var2
    puts "El resultado de la resta es #{resultado}"
    sleep(1)
    array << "#{array.length+1}. Resta de #{var1} y #{var2}. Resultado #{resultado}"
  when 3 then
    puts "Primer número:"
    var1 = gets.strip.to_f
    puts "Segundo número:"
    var2 = gets.strip.to_f
    
    puts "Calculando..."
    sleep(1)
    resultado = Calculadora.division var1,var2
    puts "El resultado de la division es #{resultado}"
    sleep(1)
    array << "#{array.length+1}. División de #{var1} y #{var2}. Resultado #{resultado}"
  when 4 then
    puts "Primer número:"
    var1 = gets.strip.to_f
    puts "Segundo número:"
    var2 = gets.strip.to_f
    
    puts "Calculando..."
    resultado = Calculadora.multiplicacion var1,var2
    puts "El resultado de la multiplicación es #{resultado}"
    sleep(1)
    array << "#{array.length+1}. Multiplicación de #{var1} y #{var2}. Resultado #{resultado}"
  when 5 then
    if array==[] then
      puts "No hay nada que mostrar. No has hecho operaciones"
    else 
    puts array
    end
    sleep(1)
  when 6 then
    print ". "   
    sleep(0.3)
    print ". "
    sleep(0.3)
    print ". "
    sleep(0.3)
    puts "Saliendo del programa. Gracias por venir"
    valor1 = false
  else
    puts "Opción incorrecta"
  end
  break if valor1 == false
end
#end until valor1 == false
#end while valor1 != false
