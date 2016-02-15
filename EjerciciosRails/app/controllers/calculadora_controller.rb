class CalculadoraController < ApplicationController
  
   def resultado
    
    if params[:operacion] == "suma"
      @resultado = "Este es tu resultado: #{params[:op1].to_i + params[:op2].to_i}"
    elsif params[:operacion] == "resta"
      @resultado = "Este es tu resultado: #{params[:op1].to_i - params[:op2].to_i}"
    elsif params[:operacion] == "multiplica"
      @resultado = "Este es tu resultado: #{params[:op1].to_i * params[:op2].to_i}"
    elsif params[:operacion] == "divide"
      @resultado = "Este es tu resultado: #{params[:op1].to_f / params[:op2].to_f}"
    else
      @resultado = "Su operación no ha podido realizarse"
  
   end
end

end
