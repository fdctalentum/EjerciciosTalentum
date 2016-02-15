#Vamos a cargar el archivo de clase a partir de la ruta relativa.
load 'Persona.rb'

persona = Persona.new("52331455M","Pedrito","Hombre",23) #Tampoco son obligatorios los paréntesis
persona2 = Persona.new"46982131T","Manolito","Hombre",45

#Esta línea da error ya que no existe el constructor (initialize) por defecto o sin parámetros
#persona3 = Persona.new

puts "El número de personas creado es: #{Persona.getNumeroDePersonas}"

persona.setColorOjos "Azules"
puts persona.getColorOjos
#Estos métodos existen después de crear el attr_accessor
puts persona.nombre
persona.nombre = "Felix"
puts persona.nombre

persona.colorOjos= "Verditos"
puts persona.colorOjos

puts persona.dni

#Podemos acceder pero no modificar el dni porque lo hemos puesto de solo lectura
#puts persona.dni = "otrodni" --> Daría error

puts persona

puts persona.saludar
puts persona2.saludar
persona.saludar_por_pantalla
persona2.saludar_por_pantalla

#persona edad 23
#persona2 edad 55

persona3 = persona2 #Así guardaríamos los valores de persona3 en persona2 antes de perderlos.

#Al hacer lo siguiente no estamos metiendo en persona2 los valores de persona, sino que le estamos diciendo a persona2 que apunte a donde apunta persona. 
persona2 = persona
#En este momento al cambiar la edad de persona2, también cambiaría la de persona ya que ambas apuntan al mismo sitio
persona2.edad = 44

puts persona
puts persona2
puts persona3