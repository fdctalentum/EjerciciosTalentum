#Este método evitará hacer puts, a partir de ahora el método mostrar los hará
def mostrar(valor)
  puts valor
end

def suma(valor1,valor2)
    valor1.to_i + valor2.to_i
end

def resta(valor1,valor2)
  valor1.to_i - valor2.to_i
end
  
def division(valor1,valor2)
  valor1.to_f / valor2.to_f
end 

def multiplicacion(valor1,valor2)
  valor1.to_i * valor2.to_i
end

=begin
def menu(*valores)
  mostrar "\t"*2+"OPERACIONES"
  mostrar "-"*40
  
  mostrar "La operación suma entre los números #{valores[0]} y #{valores[1]} tiene el resultado: #{suma valores[0],valores[1]}"
  mostrar "La operación resta entre los números #{valores[2]} y #{valores[3]} tiene el resultado: #{resta valores[2],valores[3]}"
  mostrar "La operación división entre los números #{valores[4]} y #{valores[5]} tiene el resultado: #{division valores[4],valores[5]}"
  mostrar "La operación multiplicación entre los números #{valores[6]} y #{valores[7]} tiene el resultado: #{multiplicacion valores[6],valores[7]}"
end 
=end

mostrar "Qué quieres sumar?"

vsuma1= gets.strip
vsuma2= gets.strip

mostrar "Resultado: #{suma vsuma1,vsuma2}"

mostrar "Qué quieres restar?"

vresta1 = gets.strip
vresta2 = gets.strip

mostrar "Resultado: #{resta vresta1,vresta2}"

mostrar "Qué quieres dividir?"

vdiv1 = gets.strip
vdiv2 = gets.strip

mostrar "Resultado: #{division vdiv1,vdiv2}"

mostrar "Qué quieres multiplicar?"

vmult1 = gets.strip
vmult2 = gets.strip

mostrar "Resultado: #{multiplicacion vmult1,vmult2}"

mostrar "Operaciones realizadas con éxito. Vuelva otro día, que estoy cansado"

#menu vsuma1,vsuma2,vresta1,vresta2,vdiv1,vdiv2,vmult1,vmult2


