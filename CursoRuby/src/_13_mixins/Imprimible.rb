#Un módulo puede servir también como biblioteca de funciones. ya que ruby no permite la herencia múltiple, mediante el mixin
#podemos incluir todos los módulos que queramos a una clase. Sería como emular la herencia múltiple.

module Imprimible
  
  def imprimir_pantalla texto
    puts "Imprimimos por pantalla: #{texto}"
  end
  
  def imprimir_fichero fichero, texto
    File.open(fichero, 'w'){
      |f| #representa el fichero
        f.puts "-- #{texto}"
    }
  end
  
end