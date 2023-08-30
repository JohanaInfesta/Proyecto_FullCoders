Algoritmo Ahorcado
	//Constantes
	Definir palabra_secreta, letras_correctas, letras_jugador, letra Como Caracter;
	Definir longitud_palabra, intentos Como Entero;
	//Inicializando la opcion de jugar
	Escribir "Bienvenido al Ahorcado"
	Escribir "¿Quieres Jugar?  1.SI  2.NO";
	Leer opcion_juego;
	//Inicio del bucle para ver si quiere jugar o no
	Mientras opcion_juego <> 2 Hacer
		si opcion_juego < 0 y opcion_juego > 3 Entonces
			Escribir "Debe ingresar 1.SI o 2. NO";
			leer opcion_juego
		SiNo
			Escribir "Escribir la palabra por adivinar"
			leer palabra_secreta;
			//el juego se inicializa con las variables vacias y la cantidad de intentos disponibles
			letras_correctas = "";
			letras_jugador = "";
			longitud_palabra = Longitud(palabra_secreta);
			intentos = 10;
			aciertos_acumulados = 0;
			//utilizo el borrar pantalla para que se borre el inicio la palabra que hay que adivinar 
			//y se inicialice el juego
			Borrar Pantalla 
			Escribir "Inicia el juego";
			Escribir "Adivina la palabra";
			Escribir ""; //Salto de linea
			//leer la cantidad de letras de la palabra y las dibuja con un guion
			Para i=1 Hasta longitud_palabra Hacer
				Escribir " _ " Sin Saltar
			FinPara
			Escribir ""; //Salto de linea
		FinSi
	FinMientras
FinAlgoritmo
