class LoginUsuarioController < ApplicationController
  
  def registro
      nuevoUsuario = Usuario.new params[:usuario], params[:contraseña]
      
      resultado = Dao.insert nuevoUsuario
      
      if resultado == false
        @resultado = "Usuario existente"
      else
        @resultado = "Registrado correctamente"
      end
  end
  
  def login
    
    if params[:usuario] =="Felipe" && params[:contraseña] == "1234"
      @resultado = "Te has identificado correctamente, #{params[:usuario]}"
    else
      @resultado = "Te has colado macho, aquí así no entras"
    end
       
  end
  
end
