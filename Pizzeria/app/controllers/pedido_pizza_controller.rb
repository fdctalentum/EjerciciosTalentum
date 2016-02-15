class PedidoPizzaController < ApplicationController
  
   @@precio = 0
  
  def procesado
    
    #@pizza = Pizza.new params[:tamaño],params[:ingredientes]
    #@pedido = Pedido.new params[:direccion], params[:telefono], @pizza
     
    @resultado = "Datos de su pedido: Tu pedido #{@@pedido}, #{@@pizza}. Son #{@@precio} euros"
    
  end
  
  def calcularPrecio
    
    @@pizza = Pizza.new params[:tamaño],params[:ingredientes]
    @@pedido = Pedido.new params[:direccion], params[:telefono], @@pizza 
    
    if params[:tamaño] == "pequeño" then
      @@precio = 5
    elsif params[:tamaño] == "mediano" then
      @@precio = 10
    elsif params[:tamaño] == "grande" then
      @@precio = 15    
    end
    
    for ingrediente in params[:ingredientes]
      @@precio += 1
    end
    @resultado = "El precio de tu pizza es #{@@precio} euros. Vas a pedir #{@@pizza} a #{@@pedido}. ¿Quieres pedirla?"
    render "index" 
  end
  
end
