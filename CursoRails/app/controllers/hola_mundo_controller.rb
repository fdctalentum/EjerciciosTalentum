class HolaMundoController < ApplicationController
   
   #cada vez que llega una petición web a este controlador, se creará un objeto nuevo, por lo que hay que tener cuidado
   #con las variables de instancia ya que perderemos su valor en cada llamada a esta clase
   
   #Principalmente las variables de instancia nos van a servir para comunicarnos con la vista
   @@contadorClase = 0
  
  def initialize
   @contadorInstancia = 0
  end
  
  def saludame
    puts "Salúdame -> Entrando en el método"
    I18n.locale = :es
    @saludo = I18n.t 'hello'
    @@contadorClase += 1
    @contadorInstancia += 1
    puts "El contador de clase vale #{@@contadorClase}"
    puts "El contador de instancia vale #{@contadorInstancia}"
  end
  
  def saludameIngles
    #Con lo siguiente, al llamarlo, nos olvidamos de la página en html del saludo inglés y automaticamente nos cambiaría el saludo de español a inglés.
    I18n.locale = :en
    @saludo= I18n.t 'hello'
    #Esto redirige hacia el método saludame
    render 'saludame'
  end
  
  #TODO: Hacer un nuevo controlador que se llame fecha y que muestre la fecha. Time.new te da la fecha del sistema.
  
end
