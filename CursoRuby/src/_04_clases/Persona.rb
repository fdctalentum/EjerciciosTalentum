#Comenzaremos a definir la clase Persona. La clase siempre empieza en mayúscula

class Persona
  
  #Con esto estamos creando sus respectivos getters y setters
  attr_accessor :nombre,:sexo,:edad
 
  #Con esto damos permisos de solo lectura, no de escritura
  attr_reader :dni

  #También tenemos el de solo escritura
  #attr_writer
  
  #Genero una variable de clase! Que emoción!
  @@numero_de_personas = 0
  
  #Defino el método de clase para acceder al número  de personas 
  
  def self.getNumeroDePersonas 
    @@numero_de_personas
  end
  
 #Est es el constructor de clase 
 def initialize(dni,nombre,sexo,edad)
   @dni = dni
   @nombre = nombre
   @sexo = sexo
   @edad = edad
   @colorOjos = nil
   @@numero_de_personas += 1
 end
  
  def setColorOjos colorOjos
    @colorOjos = colorOjos
  end
  
  def getColorOjos
    @colorOjos
  end
  
  def colorOjos= colorOjos
    @colorOjos = colorOjos
  end 
  
  def colorOjos
    @colorOjos
  end 
  
  def to_s
    "#{@dni},#{@nombre},#{@edad},#{@sexo},#{@colorOjos}"
  end
  def saludar_por_pantalla
   puts "Hola, soy una persona y me llamo #{@nombre}"
  end
  def saludar
    "Hola, soy una persona y me llamo #{@nombre}"
  end
end