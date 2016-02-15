
def funcionInversa numero
  raise ArgumentError, "Sólo admitimos números" unless numero.is_a? Numeric
  raise Exception, "No admito ceros" if numero == 0
  1.0/numero
end



begin 
  puts funcionInversa 5
  puts funcionInversa 0
  puts funcionInversa "felix"
rescue ArgumentError => ae
  puts "Ha ocurrido un error de argumentos"
  puts ae.message
  #Exception es la clase padre de todas las excepciones
rescue Exception => e
  puts "Ha ocurrido un error al introducir el dato"
  puts e.message
ensure
  puts "Este código de aquí se ejecutará siempre, tanto si ha habido error como si no"
end

puts "Fin del programa"

