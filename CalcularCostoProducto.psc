Proceso CalcularCostoProducto
    // Declaración de variables
    Definir precioOriginal, descuento, iva, cantidad, peso, costoEnvio, costoFinal, precioDescuento, precioImpuestos Como Real
    Dimensionar  destinos[5,2]  // Definir destinos como arreglo bidimensional de caracteres
    
    // Definir destinos disponibles con sus respectivos costos de envío
    destinos[1,1] = "Nueva York"
    destinos[1,2] = "10" // Aquí los valores se asignan como cadenas de caracteres
    destinos[2,1] = "Los Angeles"
    destinos[2,2] = "14"
    destinos[3,1] = "Chicago"
    destinos[3,2] = "18"
    destinos[4,1] = "Miami"
    destinos[4,2] = "20"
    destinos[5,1] = "Houston"
    destinos[5,2] = "15"
    
    // Lectura de datos
    Escribir "Ingrese el precio original del producto:"
    Leer precioOriginal
    
    Escribir "Ingrese el porcentaje de descuento (0 si no tiene):"
    Leer descuento
    
    Escribir "Ingrese el porcentaje de impuestos (0 si no tiene):"
    Leer iva
    
    Escribir "Ingrese la cantidad de productos:"
    Leer cantidad
    
    Escribir "Ingrese el peso del paquete en kg:"
    Leer peso
    
    Escribir "Seleccione el destino del envío:"
    Para i = 1 Hasta 5 Con Paso 1 Hacer
        Escribir i, ". ", destinos[i,1]
    Fin Para
    Leer destino
    
    // Convertir el costo de envío a número
    cadenaCostoEnvio <- destinos[destino,2] // almacenar el valor del arreglo en una variable de tipo cadena
    costoEnvio <- ConvertirANumero(cadenaCostoEnvio) // Convertir la cadena de caracteres a número
    
    // Cálculos
    Si descuento > 0 Entonces
        precioDescuento = precioOriginal - (precioOriginal * (descuento / 100))
    Sino
        precioDescuento = precioOriginal
    Fin Si
    
    precioImpuestos = precioDescuento * (1 + (iva / 100))
    
	Si cantidad > 1 Entonces
		precioCantidad = (precioImpuestos - (precioImpuestos *  (5 / 100))) * cantidad
	SiNo
		precioCantidad = precioImpuestos
	FinSi
	
    costoEnvioTotal = costoEnvio + (peso * 2) // Suponiendo que el costo de envío es $2 por kg
    
    costoFinal = precioCantidad + costoEnvioTotal
    
    // Mostrar resultados
    Escribir "Costo final del producto:"
    Escribir "Precio con descuento: ", precioDescuento
    Escribir "Precio con impuestos: ", precioImpuestos
    Escribir "Precio con descuento por cantidad: ", precioCantidad
    Escribir "Costo de envío: ", costoEnvioTotal
    Escribir "Costo final: ", costoFinal
FinProceso


