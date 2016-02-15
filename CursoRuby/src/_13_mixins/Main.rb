load 'Imprimible.rb'
load 'Datos.rb'

datos = Datos.new "Valor del dato 1", "valor del dato 2"
datos.imprimir_pantalla datos.valor1
datos.imprimir_fichero "fichero.txt",datos.valor2

