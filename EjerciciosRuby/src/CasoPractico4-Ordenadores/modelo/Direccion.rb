class Ordenador::TarjetaRed::Direccion
  
  attr_accessor :mac_adress, :ip_adress
  
  def initialize (mac_adress, ip_adress)   
    @mac_adress = mac_adress
    @ip_adress = ip_adress
 
  end
  
   def to_s
    "MAC: #{@mac_adress} / IP: #{@ip_adress}"
  end 
  
end