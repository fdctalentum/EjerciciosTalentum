class UsuarioSimpleController < ApplicationController
  
  @@usuarios = {}
  
  def alta
    
    @@usuarios[params[:user]] = params[:password]
    
  end

  def validar
    @bandera = true
    if @@usuarios[params[:user]] == nil
      @usuarioValido = "El usuario no existe" 
      render "index"
    else
      if [params[:passowrd]] == @@usuarios[params[:user]]
        @usuarioValido = "Correcto"
       
      else
        @usuarioValido = "Password incorrecto"
        render "index"
      end   
    end
    
    
  end
end
