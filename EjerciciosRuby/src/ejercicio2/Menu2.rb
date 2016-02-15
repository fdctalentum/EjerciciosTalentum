  vO1 = 1
  vO2 = 2
  vO3 = 3

  OPCION_DE = " - Opción de"
  
def menu(*valores)
  puts "\t"*2+"MENÚ"
  puts "-"*40
   
  puts "#{valores[0]}#{valores[3]} Mostrar"
  puts "#{valores[1]}#{valores[3]} Borrar"
  puts "#{valores[2]}#{valores[3]} Actualizar"
  
end

menu vO1,vO2,vO3,OPCION_DE
