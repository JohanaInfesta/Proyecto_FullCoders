Algoritmo Ahorcado
	// Constantes
	Definir palabra_secreta, letras_correctas, letras_jugador, letra Como Cadena
	Definir longitud_palabra, intentos Como Entero
	// Inicializando la opcion de jugar
	Escribir 'Bienvenido al Ahorcado'
	Escribir '¿Quieres Jugar?  1.SI  2.NO'
	Leer opcion_juego
	// Inicio del bucle para ver si quiere jugar o no
	Mientras opcion_juego<>2 Hacer
		Si opcion_juego<0 Y opcion_juego>3 Entonces
			Escribir 'Debe ingresar 1.SI o 2. NO'
			Leer opcion_juego
		SiNo
			Escribir 'Escribir la palabra por adivinar'
			Leer palabra_secreta
			// el juego se inicializa con las variables vacias y la cantidad de intentos disponibles
			letras_correctas <- ''
			letras_jugador <- ''
			longitud_palabra <- Longitud(palabra_secreta)
			intentos <- 8
			aciertos_acumulados <- 0
			// utilizo el borrar pantalla para que se borre el inicio la palabra que hay que adivinar 
			// y se inicialice el juego
			Limpiar Pantalla
			Escribir 'Inicia el juego'
			Escribir 'Adivina la palabra'
			Escribir ''
			// leer la cantidad de letras de la palabra y las dibuja con un guion
			Para i<-1 Hasta longitud_palabra Hacer // Salto de linea
				Escribir ' _ 'Sin Saltar
			FinPara
			Escribir ''
			// ciclo repetitivo para pedir letras en el juego
			Mientras intentos>=1 Hacer // Salto de linea
				contador_aciertos <- 0
				Escribir ''
				Escribir 'Has usado la letra: ', letras_jugador // Salto de linea
				Escribir 'Te quedan: ', intentos, ' intentos'
				Escribir 'Dime una letra: '
				Leer letra
				// ciclo para comprobar que la letra ya a sido usada
				Para j<-1 Hasta Longitud(letras_jugador) Hacer
					Si letra=Subcadena(letras_jugador,j,j) Entonces
						control <- 1
						j <- Longitud(letras_jugador)+1
						i <- longitud_palabra+1
						contador_aciertos <- 99
					SiNo // evita conflictos con la ausencia de letras
						control <- 9
					FinSi
				FinPara
				// si la letra es nueva, se agrega a la variable de letras 
				Si control=9 Entonces
					letras_jugador <- letras_jugador+letra
				FinSi
				i <- 1
				// recorre la palabra secreta y verifica si la letra existe en ella
				Mientras i<=longitud_palabra Hacer // contador para recorrer los caracteres de la palabra secreta
					Si letra=Subcadena(palabra_secreta,i,i) Entonces
						contador_aciertos <- contador_aciertos+1
						aciertos_acumulados <- aciertos_acumulados+1
						Si aciertos_acumulados=longitud_palabra Entonces
							i <- longitud_palabra+1
							intentos <- 0
						FinSi
					FinSi
					i <- i+1
				FinMientras
				// si tiene al menos un acierto, actualizo los aciertos del jugador
				Si contador_aciertos>0 Y contador_aciertos<98 Entonces
					control <- 2
					letras_correctas <- letras_correctas+letra
				FinSi
				Si contador_aciertos=0 Entonces
					control <- 3
				FinSi
				// Mensaje para el usuario
				Según control Hacer
					1:
						Escribir 'Esa letra ya fue usada'
						intentos <- intentos+1
					2:
						Escribir 'Has acertado la letra'
						intentos <- intentos+1
				FinSegún
				Esperar 1 Segundos
				// Esperar Tecla
				Limpiar Pantalla
				// actualizacion de variables
				control <- 0
				intentos <- intentos-1
				dibujarIntentos(intentos)
				Escribir 'Juego del ahorcado'
				Escribir 'Adivina la palabra'
				Para j<-1 Hasta longitud_palabra Hacer
					contador_aciertos <- 0
					// compara una letra de la palabra_secreta con las letras_jugador
					Para i<-1 Hasta Longitud(palabra_secreta) Hacer
						Si Subcadena(palabra_secreta,j,j)=Subcadena(letras_correctas,i,i) Entonces
							contador_aciertos <- contador_aciertos+1
						FinSi
					FinPara
					// sin aciertos se muestran espacios vacios, sino se completa con la letra
					Si contador_aciertos=0 Entonces
						Escribir ' _ 'Sin Saltar
					SiNo
						Escribir Subcadena(palabra_secreta,j,j)Sin Saltar
					FinSi
				FinPara
			FinMientras
			// fin del juego y resultado
			Si aciertos_acumulados=longitud_palabra Entonces
				Escribir ''
				Escribir 'Felicidades has GANADO!!!'
				Escribir '¿Quieres seguir jugando?  1.SI  2.NO'
				Leer opcion_juego
			SiNo
				Escribir ''
				Escribir 'Lamentablemente has perdido...'
				Escribir 'La palabra secreta era :', palabra_secreta
				Escribir '¿Quieres seguir jugando?  1.SI  2.NO'
				Leer opcion_juego
			FinSi
			Si opcion_juego=2 Entonces
			
			FinSi
		FinSi
	FinMientras
FinAlgoritmo

Función dibujarIntentos(intentos)
	Escribir 'La horca!!!'
	Según intentos Hacer
		7:
			Escribir ''
			Escribir ''
			Escribir ''
			Escribir ''
			Escribir ''
			Escribir '_________'
		6:
			Escribir '|'
			Escribir '|'
			Escribir '|'
			Escribir '|'
			Escribir '|'
			Escribir '_________'
		5:
			Escribir '------'
			Escribir '|'
			Escribir '|'
			Escribir '|'
			Escribir '|'
			Escribir '_________'
		4:
			Escribir '------'
			Escribir '|   |'
			Escribir '|   o'
			Escribir '|  '
			Escribir '|  '
			Escribir '_________'
		3:
			Escribir '------'
			Escribir '|   |'
			Escribir '|   o'
			Escribir '|  /|'
			Escribir '|'
			Escribir '_________'
		2:
			Escribir '------'
			Escribir '|   |'
			Escribir '|   o'
			Escribir '|  /|\'
			Escribir '|'
			Escribir '_________'
		1:
			Escribir '------'
			Escribir '|   |'
			Escribir '|   o'
			Escribir '|  /|\'
			Escribir '|  / '
			Escribir '_________'
		0:
			Escribir '------'
			Escribir '|   |'
			Escribir '|   o'
			Escribir '|  /|\'
			Escribir '|  / \'
			Escribir '_________'
	FinSegún
	Escribir ''
FinFunción

