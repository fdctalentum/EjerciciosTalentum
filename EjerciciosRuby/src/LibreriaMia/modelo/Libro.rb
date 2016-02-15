module Biblioteca
  module Modelo
    class Libro
        
        attr_accessor :titulo, :autor, :desc, :id
        
        def initialize titulo, autor, desc, id=nil
          @titulo = titulo
          @autor = autor
          @desc = desc
          @id = id
        end
        
        def to_s
          "--[#{id}]--\n\t Título: #{titulo} \n\t Autor: #{autor} \n\t Descripción: #{desc}"
        end
        
    end
  end
end