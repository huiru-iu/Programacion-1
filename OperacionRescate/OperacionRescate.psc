//Nombre del archivo: Operación rescate
//Descripción: Algoritmo que capture las calificaciones obtenidas en los tres primeros exámenes de los estudiantes, para conocer si puede cumplir con la meta y en qué categoría de promedio corresponde a cada estudiante.
//Autor:Chen Huiru , Romo Morales Abril Yaneth
//Fecha:13/09/2026

Proceso OperacionRescate
	
	//Descripción
	Escribir "Algoritmo que evalua las calificaciones de los estudiantes para conocer si pueden aprobar y que tipo de estudiante son"
	
	Definir cal1, cal2, cal3, numEstudiante, cantEstudiantes, sobresalientes, regulares, rescate, reprobados como Enteros 
	Definir promedio, para90, para60 Como Real
	
	sobresalientes <- 0
	regulares <- 0
	rescate <- 0
	reprobados <- 0
	numEstudiante <- 1
	
	Escribir Sin Saltar "Ingresar la cantidad de estudiantes: "
	Leer cantEstudiantes
	
	Mientras numEstudiante <= cantEstudiantes Hacer
		Escribir ""
		Escribir "Estudiante ", numEstudiante
		
		Escribir Sin Saltar "Ingresar la calificación del examen 1 (0 ~ 100): "
		Leer cal1
		
		//Filtro para validar la calificación
		Mientras cal1 < 0 | cal1 > 100 Hacer
			
			Escribir "Tu calificación debe ser entre 0 y 100"
			Escribir ""
			Escribir Sin Saltar "Ingresar la calificación del examen 1 (0 ~ 100): "
			Leer cal1
			
		FinMientras
		
		Escribir Sin Saltar "Ingresar la calificación del examen 2 (0 ~ 100): "
		Leer cal2
		
		//Filtro para validar la calificación
		Mientras cal2 < 0 | cal2 > 100 Hacer
			Escribir "Tu calificación debe ser entre 0 y 100"
			Escribir ""
			Escribir Sin Saltar "Ingresar la calificación del examen 2 (0 ~ 100): "
			Leer cal2
		FinMientras
		
		Escribir Sin Saltar "Ingresar la calificación del examen 3 (0 ~ 100): "
		Leer cal3
		
		//Filtro para validar la calificación
		Mientras cal3 < 0 | cal3 > 100 Hacer
			Escribir "Tu calificación debe ser entre 0 y 100"
			Escribir ""
			Escribir Sin Saltar "Ingresar la calificación del examen 3 (0 ~ 100): "
			Leer cal3
		FinMientras
		
		//Sacar el promedio y ver si puede llegar a la meta
		promedio <- Redon((cal1 + cal2 + cal3) / 3)
		para90 <- 360 - (cal1 + cal2 + cal3)
		para60 <- 240 - (cal1 + cal2 + cal3)
		Escribir ""
		Escribir "Promedio actual: ", promedio
		
		Si para90 <= 100 Entonces
			Escribir "Para obtener un promedio final de 90 ocupas sacar: ", para90
			Escribir "Meta alcanzable"
		SiNo
			Escribir "Para obtener un promedio final de 90 ocupas sacar: ", para90
			Escribir "Meta no alcanzable"
		FinSi
		
		Si para60 <= 0 Entonces
			Escribir "Para obtener un promedio final de 60 ocupas sacar: 0 "
			Escribir "Meta alcanzable"
		SiNo
			Si para60 <= 100 Entonces
				Escribir "Para obtener un promedio final de 60 ocupas sacar: ", para60
				Escribir "Meta alcanzable"
			SiNo
				Escribir "Para obtener un promedio final de 60 ocupas sacar: ", para60
				Escribir "Meta no alcanzable"
			FinSi
		FinSi
		
		//Para tener un promedio entre 90 a 100, la suma de los cuatro exámenes debe ser mayor o igual que 358 ya que 358 / 4 = 89.5 y Redon(89.5) = 90.
		Si cal1 + cal2 + cal3 + 100 >= 358 Entonces
            Escribir "Categoría: Sobresaliente potencial"
            sobresalientes <- sobresalientes + 1
		SiNo
			//Para tener un promedio entre 61 a 89, la suma de los cuatro exámenes debe ser mayor o igual que 242 ya que 242 / 4 = 60.5 y Redon(60.5) = 61.
			Si cal1 + cal2 + cal3 + 100 >= 242 Entonces
                Escribir "Categoría: Rendimiento regular potencial"
                regulares <- regulares + 1
			SiNo
				Si para60 <= 100 Entonces
                    Escribir "Categoría: Puede rescatar el semestre"
                    rescate <- rescate + 1
				SiNo
					Escribir "Categoría: Reprobado inevitable"
                    reprobados <- reprobados + 1
				FinSi
			FinSi
		FinSi
		
		numEstudiante <- numEstudiante + 1
		
	FinMientras
	
	Escribir ""
	Escribir "Cantidad de estudiantes con posibilidad de obtener un promedio sobresaliente: ", sobresalientes
	Escribir "Cantidad de estudiantes con posibilidad de obtener un rendimiento regular: ", regulares
	Escribir "Cantidad de estudiantes que pueden rescatar el semestre: ", rescate
	Escribir "Cantidad de estudiantes que reprobarán inevitablemente: ", reprobados
	
FinProceso
