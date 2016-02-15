#Este módulo es el del modelo de datos. Creamos la clase libro, con sus atributos

module Biblioteca
  module Modelo
    class Libro
      
      #Creamos el accessor
      attr_accessor :titulo, :autor, :desc, :id
      
      #Inicializamos con los parámetros que vamos a usar. 
      #Id lo inicalizamos a nil porque es automática, no vamos a ponerla manualmente cuando creamos el libro. Si no inicializse a nil, daría error de número de argumentos.
      def initialize(titulo, autor, desc, id=nil)
        
        @titulo = titulo
        @autor = autor
        @desc = desc
        @id = id
        
      end
      
      #Definimos el método to_s para que al listar sea más presentable
      def to_s
        "-- #{@id} \t\n Título: #{@titulo} \t\n Autor: #{@autor} \t\n Descripción: #{@desc}" 
      end
      
    end
  end
end