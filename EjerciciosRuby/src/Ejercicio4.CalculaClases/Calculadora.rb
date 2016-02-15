class Calculadora
  
  def suma(valor1,valor2)
    valor1.to_i + valor2.to_i
  end

  def resta(valor1,valor2)
  valor1.to_i - valor2.to_i
  end
  
  def division(valor1,valor2)
  valor1.to_f / valor2.to_f
  end 

  def multiplicacion(valor1,valor2)
  valor1.to_i * valor2.to_i
  end
  
end