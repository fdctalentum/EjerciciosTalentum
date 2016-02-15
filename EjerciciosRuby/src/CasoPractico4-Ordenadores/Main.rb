load 'modelo/CargaModelos.rb'

procesador1 = Ordenador::Procesador.new("intel","i6","2.10gh",200)
procesador2 = Ordenador::Procesador.new("amd","fx-6350","3.90gh",300)

ram1 = Ordenador::Ram.new("Kingston","6565656","4gb", 80)
ram2 = Ordenador::Ram.new("Corsair","CM656565","16gb", 100)

direccion1 = Ordenador::TarjetaRed::Direccion.new("E5 65 44 65 64 65 65","192.168.1.31")
direccion2 = Ordenador::TarjetaRed::Direccion.new("FA 6F D5 64 F6 56 79","192.168.1.165")

tarjetared1 = Ordenador::TarjetaRed.new(direccion1,"systemnoseke","E655",20)
tarjetared2 = Ordenador::TarjetaRed.new(direccion2,"realtek","C6565",15)

discoduro1 = Ordenador::DiscoDuro.new("Samsung","850 Evo","SSD","250gb", 100)
discoduro2 = Ordenador::DiscoDuro.new("WD","Caviar Blue","HDD","1tb", 60)

tgrafica1 = Ordenador::Tgrafica.new("Nvidia","GTX9700","2gb", 150)
tgrafica2 = Ordenador::Tgrafica.new("ATI","Radeon","4gb", 120)

placabase1 = Ordenador::PlacaBase.new("Asus","T1000", 50)
placabase2 = Ordenador::PlacaBase.new("Dell","D5000", 50)

monitor1 = Ordenador::Pantalla.new("Dell","E2010Ht","21 pulgadas", 120)
monitor2 = Ordenador::Pantalla.new("Toshiba","T5478hd","32 pulgadas", 120)

ordenador1 = Ordenador.new(procesador1, ram1, discoduro1, tgrafica1, placabase1, monitor1, tarjetared1)
ordenador2 = Ordenador.new(procesador2, ram2, discoduro2, tgrafica2, placabase2, monitor2, tarjetared2)

dirPersona1 = Agenda::Direccion.new("Calle","Falsa",45,2,"A")
dirPersona2 = Agenda::Direccion.new("Avenida","Pedorro",45,4,"C")
persona1 = Agenda::Contacto.new("Manolo","Dosconleche",20,"manolo@gmail.com",dirPersona1)
persona2 = Agenda::Contacto.new("Freddy","Krueger",65,"freddy@gmail.com",dirPersona2)

puts persona1
puts "---------------"
puts ordenador1
puts "---------------"
puts persona2
puts "---------------"
puts ordenador2
puts "---------------"
