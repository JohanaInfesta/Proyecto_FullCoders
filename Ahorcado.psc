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
		si resp < 0 y resp >= 3 Entonces
			Escribir "Debe ingresar 1.SI o 2. NO";
			leer resp
		SiNo
			
		FinSi
	FinMientras
FinAlgoritmo
