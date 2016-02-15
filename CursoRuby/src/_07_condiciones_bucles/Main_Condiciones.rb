#### Condiciones ####

variable1 = 1

if variable1 == 1 then #Se puede usar el then sin problemas
  puts "Es un uno así que va a ser que sí"
end

if variable1 !=1
  puts "Pues va a ser que no es uno"
end

if variable1 == 2
  puts "Pues va a ser que sí porque lo digo yo"
else
  puts "Llegó el else"
end

if variable1 == 1 || variable1 == 2
  puts "Pues va a ser que o es uno o es dos"
else 
  puts "Ni uno ni dos, tronco"
end

if variable1 >=0
  puts "Pues va a ser positivo, nunca negatifo"
end

if variable1 > 0 then
  puts "Mayor que cero"
elsif variable1 == -2 then
  puts "Es menos dos!"
elsif variable1 < 0 then
  puts "Menor que cero"
else 
  puts "Es 0 por huevos"
end

puts "POR HUEVOS ES CEROOOOOOO" if variable1 == 0
puts variable1==0?"Es cero":"No es cero"

variable = nil

if !variable then
  puts "La variable es nula!"
end
unless variable
  puts "variable es nula"
end

variable = 10

if variable == 1 then
  puts "Es uno"
elsif variable == 2 then
  puts "Es dos"
elsif variable == 3 then
  puts "Es tres"
else 
  puts "No es ni 1 ni 2 ni 3"
end

case 
when variable == 1 then
  puts "Es uno con el case"
when variable == 2 then
  puts "Es dos con el case"
else
  puts "No es ni 1 ni 2 con el case"
end

#Un case facil
case variable 
when 1 then
  puts "Es uno en plan guay"
when 2 then
  puts "Es dos en plan guay"
when 3 then
  puts "Es tres en plan guay"
else 
  puts "No es ni 1 ni 2 ni 3 en plan guay"
end

#Utilizando rangos
case variable
when 1..10 then
  puts "Es de 1 a 10"
when 11..20 then
  puts "Está entre 10 y 20"
else 
  puts "Nada tío"
end





