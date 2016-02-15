load "ModuloColores.rb"

puts "Probando el módulo de colorines!"

puts "Rojo: #{ModuloColores::ROJO}"
puts "Verde:#{ModuloColores::VERDE} "
puts "Azul: #{ModuloColores::AZUL}"

puts "Llamando al método RGB: #{ModuloColores::getRGB(255,255,255)}"
