#TODO: Esto es una tarea. La pongo aquí y siempre queda pendiente, marcada a la izquierda.


valor = 5

#Bucle While con condicion e incremento del valor
while valor < 10 do
  puts "Valor del while es: #{valor}"
  valor +=1
end

#Bucle for de i recorriendo un rango entre 5 y 10
for i in 5..10
  puts "Valor del for #{i}"
end
puts i

#Cuando queremos ejecutar algo al menos la primera vez usamos el begin. Entrará siempre en el begin, aunque luego termine con el end while
begin
  puts "El valor de i es mayor 5, es #{i}"
  i -= 1  
end while i > 5
puts i

until i == 0
  puts "La i no es cero! es #{i}"
  i-=1
end
puts i

#Bucle for anidado, recorre como una matriz
for i in 0..2 do 
  for j in 0..2 do 
    puts "Fila #{i} Columna #{j}"
  end
end
