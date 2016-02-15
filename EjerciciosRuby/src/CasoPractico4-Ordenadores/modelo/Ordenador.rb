class Ordenador
  
  attr_accessor :procesador, :ram, :discoduro, :tgrafica, :placabase, :monitor, :precioTotal, :tarjetared, :id
  
  def initialize (procesador,ram,discoduro,tgrafica,placabase,monitor,tarjetared,id=nil)
  
   @procesador = procesador
   @ram = ram
   @discoduro = discoduro
   @tgrafica = tgrafica
   @placabase = placabase
   @monitor = monitor
   @tarjetared = tarjetared
   @id = id
  end
  
  def total
    @procesador.precio+@ram.precio+@discoduro.precio+@tgrafica.precio+@placabase.precio+@monitor.precio+@tarjetared.precio
  end
  
    def to_s
    "Ordenador \n ---------------------- \n #{@procesador} \n #{@ram} \n #{@discoduro} \n #{@tgrafica} \n #{@placabase}\n #{@monitor} \n #{@tarjetared} \n **** Precio total: #{self.total} euros"
  end
  
end