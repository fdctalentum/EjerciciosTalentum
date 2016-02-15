
load 'Contacto.rb'
load 'Direccion.rb'

direccion = Contacto::Direccion.new "Calle","Diamante",28234
contacto = Contacto.new "Felix",91345678,direccion

puts contacto

contacto2 = Contacto.new "Roberto",91345678,Contacto::Direccion.new("Plaza","Eliptica",23456)

puts contacto2
contacto2.setDireccion Contacto::Direccion.new("Calle","La plata",45678)
puts contacto2


direccion = nil
contacto3 = Contacto.new "Jesus",91345655,direccion
direccion = Contacto::Direccion.new "Calle","Diamante",28234

puts contacto3