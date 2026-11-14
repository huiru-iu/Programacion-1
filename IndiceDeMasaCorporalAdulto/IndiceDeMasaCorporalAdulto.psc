//Nombre del archivo: ÍndiceDeMasaCorporalAdulto.psc
//Descripción:Tener datos personales para conocer la categoría de IMC (índice de masa corporal)
//Autor:Chen Huiru, Romo Morales Abril Yaneth
//Fecha:25/08/2026

//Las categorías de IMC para adultos son las siguientes:

//Bajo peso severo: IMC por debajo de 16.5
//Bajo peso: IMC desde 16.5 y por debajo de 18.5
//Peso saludable: IMC desde 18.5 y por debajo de 25.0
//Sobrepeso: IMC desde 25.0 y por debajo de 30.0
//Obesidad tipo I (moderada): IMC desde 30.0 y por debajo de 35.0
//Obesidad tipo  II (severa): IMC desde 35.0 y por debajo de 40.0
//Obesidad tipo III (mórbida): IMC de 40.0 o más

Proceso IndiceDeMasaCorporalAdulto
	
	Definir Anio, Peso, Estatura, IMC Como Real
	
	Escribir "Conocer la categoría de IMC a la que perteneces"
	Escribir ""
	Escribir "IMC = Peso / Estatura^2"
	Escribir ""
	
	Escribir "Escribir tu edad (años):" Sin Saltar
	Leer Anio
	
	//Proceso
	Si Anio >= 20 Entonces
		
		Escribir "Escribir tu peso (kg.):" Sin Saltar
		Leer Peso
		
		Si Peso > 0 Entonces
			
			Escribir "Escribir tu estatura (m.):" Sin Saltar
			Leer Estatura
			
			Si Estatura > 0 Entonces
				
				IMC <- Peso / (Estatura*Estatura)
				Escribir "Tu IMC es: ", IMC
				Escribir "Su categoría corresponde a: " Sin Saltar
				
				Si IMC < 16.5 Entonces
					Escribir "Bajo peso severo"
				SiNo
					Si IMC < 18.5 Entonces
						Escribir "Bajo peso"
					SiNo
						Si IMC < 25.0 Entonces
							Escribir "Peso saludable"
						SiNo
							Si IMC < 30.0 Entonces
								Escribir "Sobrepeso"
							SiNo
								Si IMC < 35.0 Entonces
									Escribir "Obesidad tipo I (moderada)"
								SiNo
									Si IMC < 40.0 Entonces
										Escribir "Obesidad tipo II (severa)"
									SiNo
										Escribir "Obesidad tipo III (mórbida)"
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
				
			SiNo
				Escribir "Datos invalidos. Su estatura debe ser mayor que 0"
			FinSi
			
		SiNo
			Escribir "Datos invalidos. Su peso debe ser mayor que 0"
		FinSi
		
	SiNo
		Escribir "Datos invalidos. Su edad debe ser mayor o igual a 20"
	FinSi
	
FinProceso
