load 'Agenda.rb'

def mostrar(valor)
  puts valor
  puts "-----------------------------------------------------------------------"
end

direccion1 = Direccion.new("Calle","Falsa",45,2,"A")
direccion2 = Direccion.new("Avenida","Dolor",5)
direccion3 = Direccion.new("Pasaje","Del Terror",56,"Bajo")

persona1 = Contacto.new("Manolo","Dosconleche",20,"manolo@gmail.com",direccion1)
persona2 = Contacto.new("Jose","Yolé", 30 ,"pepe@gmail.com",direccion2)
persona3 = Contacto.new("Francisco","Alegre",25,"francis@gmail.com",direccion3)

mostrar "                   BIENVENIDO A LA AGENDA"
mostrar persona1
mostrar persona2
mostrar persona3