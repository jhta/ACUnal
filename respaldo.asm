	TITLE MASM Template						(main.asm)
	; Description:
	; 
	; Revision date:
	INCLUDE Irvine32.inc
	INCLUDE macros.inc
	TAM_VECTOR = 1000
	TAM_BUFER = 5000

	.data
	;////////VARIABLES PARA SALUDO <INICIO>////////////////
	
mUn byte  "	__________________________________________________________",0dh,0ah 
			byte "	|  __    __  .__   __.                                    |",0dh,0ah 
			byte "	| |  |  |  | |  \ |  |  UNUVERSIDAD NACIONAL DE COLOMBIA  |",0dh,0ah
			byte "	| |  |  |  | |   \|  |  JEISON HIGUITA SANCHEZ            |",0dh,0ah
			byte "	| |  |  |  | |  . `  |  JUAN FELIPE MEJIA GUERRA          |",0dh,0ah
			byte "	| |  `--'  | |  |\   |                                    |",0dh,0ah
			byte "	|  \______/  |__| \__|                                    |",0dh,0ah
			byte "	|_________________________________________________________| ",0dh,0ah
			byte "_______________________________________________________________________________ ",0dh,0ah
			byte "  ",0dh,0ah,0
                     
	

	;*****************************************************
	;/////////Mensaje de bienvenida
	;*****************************************************
	m1 BYTE " ",0dh,0ah
		BYTE "	 ____   _                                 _      _",0dh,0ah   
	   BYTE "	|  _ \ (_)                               (_)    | |",0dh,0ah    
	   BYTE "	| |_) | _   ___  _ __ __   __ ___  _ __   _   __| |  ___",0dh,0ah
	   BYTE "	|  _ < | | / _ \| '_ \\ \ / // _ \| '_ \ | | / _` | / _ \",0dh,0ah    
	   BYTE "	| |_) || ||  __/| | | |\ V /|  __/| | | || || (_| || (_) |",0dh,0ah    
	   BYTE "	|____/ |_| \___||_| |_| \_/  \___||_| |_||_| \__,_| \___/",0dh,0ah                                      
	  BYTE "	__________________________________________________________ ",0dh,0ah,0
																														   
	blanco BYTE " ",0dh,0ah,0
	;*****************************************************
	;/////////Mensaje bandeja de color
	;*****************************************************

	 mSeleccionaLetra BYTE "   Que color de letra desea? (ejm: 1) ",0
	  mSeleccionaFondo BYTE "   Que color de fondo desea? (ejm: 1) ",0
	 colorFondo dword ?
	 colorLetra dword ?
	mMenuNegro BYTE  "	0. Negro"
				 byte "	1. Azul"
				 byte "             2.Verde",0dh,0ah
				 BYTE  "	3. Cyan"
				 byte " 	4. Rojo"
				 byte "             5. magenta",0dh,0ah
				 BYTE  "	6. cafe"
				 byte "	        7. Gris Claro"
				 byte "       8. Gris",0dh,0ah
				 BYTE  "	9. Azul Claro"
				 byte "	10. Verde Claro"
				 byte "     11. Cyan Claro",0dh,0ah
				 BYTE  "	12. Rojo Claro"
				 byte "	13. Magenta Claro"
				 byte "   14. Amarillo",0dh,0ah
				BYTE  "	15. Blanco",0dh,0ah,0
			 

	;*****************************************************
	;/////////Computador
	;*****************************************************
			 
			 
	mComputador byte "             ____________________________________________________",0dh,0ah
	BYTE  "            /                                                    \",0dh,0ah
	BYTE  "           |    _____________________________________________     |",0dh,0ah
	BYTE  "           |   |                                             |    |",0dh,0ah
	BYTE  "           |   |   root@hugo:~# view project                 |    |",0dh,0ah
	BYTE  "           |   |    CALCULO DE DATOS ESTADISTICOS            |    |",0dh,0ah
	BYTE  "           |   |    Arquitectura de Computadores             |    |",0dh,0ah
	BYTE  "           |   |    UNIVERSIDAD NACIONAL DE COLOMBIA         |    |",0dh,0ah
	BYTE  "           |   |    Medellín                                 |    |",0dh,0ah
	BYTE  "           |   |    2014-1                                   |    |",0dh,0ah
	BYTE  "           |   |                                             |    |",0dh,0ah
	BYTE  "           |   |                                             |    |",0dh,0ah
	BYTE  "           |   |                                             |    |",0dh,0ah
	BYTE  "           |   |_____________________________________________|    |",0dh,0ah
	BYTE  "           |                                                      |",0dh,0ah
	BYTE  "            \_____________________________________________________/",0dh,0ah
	BYTE  "                   \_______________________________________/",0dh,0ah
	BYTE  "                _______________________________________________",0dh,0ah
	BYTE  "             _-'    .-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.  --- `-_",0dh,0ah
	BYTE  "          _-'.-.-. .---.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.--.  .-.-.`-_",0dh,0ah
	BYTE  "       _-'.-.-.-. .---.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-`__`. .-.-.-.`-_",0dh,0ah
	BYTE  "    _-'.-.-.-.-. .-----.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-----. .-.-.-.-.`-_",0dh,0ah
	BYTE  " _-'.-.-.-.-.-. .---.-. .-----------------------------. .-.---. .---.-.-.-.`-_",0dh,0ah
	BYTE  ":-----------------------------------------------------------------------------:",0dh,0ah
	BYTE  "`---._.-----------------------------------------------------------------._.---'",0dh,0ah,0
			 
			 
			 
	mMenuOpciones BYTE 0ah, "		MENU DE ACCIONES: ",0ah,0dh
			BYTE  "___________________________________________________________________________________",0ah,0dh
    		BYTE   0ah,"     1. Media Aritmetica          2. Mediana                  3. Moda",0ah,0dh
				 	 byte "     4. Media Geometrica          5. Media Armonica         6. Percentiles ",0ah,0dh
					 byte "     7. Cuartiles               8. Deciles 	          9. Momento al origen ",0ah,0dh
					 byte "     10. Momentos centrales       11. Varianza            12. Desciacion Tipica ",0ah,0dh
					 byte "     13. Cuasi-varianza	          14. Desviacion media Respecto a la media",0ah,0dh 	
					 byte "     15. Desviacion media Respecto a la mediana ",0ah,0dh,0ah,0dh,0
			
	MensajeHolaHugo byte "                         Universidad Nacional de Colombia    ",0ah,0dh
					byte "                        Curso: Arquitectura de computadores  ",0ah,0dh
					byte "                   Regresion polinomial por minimos cuadrados",0ah,0dh
					byte "                                Semestre 3-2013              ",0ah,0dh,0ah,0dh,0
	errorcillo real4 0.0
	mediamedia real4 ?
	denominadorerror dword 0
	auxiliarciclociclo1 dword 0
	MensajeBienvenida BYTE "Generacion automatica de numeros aleatorios para la regresion lineal",0ah,0dh,0
	mensajeerrorxd byte 0ah,"El error es aproximadamente:",0ah,0dh,0
	MensajeCantidad BYTE "Por favor ingrese la cantidad de observaciones (X,Y) que desea tener",0ah,0dh,0
	MensajeGrado BYTE 0ah,"Por favor ingrese el grado del polinomio al cual desea aproximar",0ah,0dh,0
	MensajeCantidad1 BYTE 0ah,"Por favor ingrese la cantidad de Elementos: ",0
						

	MensajeInicialAviso BYTE 0ah,0ah, "Por la presente se autoriza, de forma gratuita, a cualquier persona que haya obtenido una " ,0ah,0dh
												byte "copia de este software y archivos de documentación asociados (el Software), " ,0ah,0dh
	byte "a utilizar el Software sin restricción, incluyendo sin limitación los derechos de usar, copiar, modificar,  ",0ah,0dh
	BYTE "fusionar, publicar, distribuir, sublicenciar, y/o vender copias de este Software",0ah,0dh
	 BYTE "y permitir lo mismo a las personas a las que se les proporcione el Software.",0ah,0dh,0
	 
	MensajeFAQ  byte 0ah,0ah, "la aplicacion cuenta con un faq, recuerde leerlo antes de ingresar los datos",0ah,0dh
				byte "  Acepto leer el faq antes de usar la aplicacion Si(1), No(2)",0


		



	MensajeMuestra BYTE "Estos son los datos que ingresó en el archivo",0ah,0dh,0
	numeroAleatorio DWORD ?  ;Variable auxiliar para la generación de los aleatorios
	RangoAleatorio DWORD ?  ;Variable auxiliar para la generación de los aleatorios
	NO WORD ? ;Variable auxiliar
	vector  DWORD TAM_VECTOR dup(?)   ;Vectorsillo
	dos dword 2
	aux dword ?
	Auxiliar DWORD ?
	bufer BYTE TAM_BUFER DUP(?)
	nombreArchivo BYTE 80 DUP(0)
	manejadorArchivo HANDLE ?
	auxCuadradosVarianza REAL4 ?
	pepito DWORD ?
	pepito2 DWORD ?
	bytes_leidos DWORD ?
	contador DWORD 0
	contadorfraccion dword 1
	diez dword 10
	cero dword 0
	garbage dword ?
	contadorpuntoycoma dword 0
	contadorfraccionbase1 dword 0
	vectorcillo dword 100 dup(?)
	vecx dword 100 dup (?)
	vecy dword 100 dup (?)
	mediana REAL4 ?
	indiceX DWORD 0
	indicey DWORD 0
	a REAL4 10000 DUP(?)        ;Polinomio... a<0> + a<1>x + a<2>x^2...
	t REAL4 10000 DUP(?)        ;terminos independientes
	s REAL4 10000 DUP(?)
	m REAL4 10000 DUP(?)        ;array 
	CuadradosVarianza REAL4 ?
	mediaGeometrica REAL4 ?
	aux_ptnv dword ?
	auxesi dword 0
	sumavarianza REAL4 ?
	varianza REAL4 ?
	CuasiVarianza REAL4 ?
	contadorparaimpresion dword 0
	pideXI BYTE 'Por favor ingrese el valor X del punto ',0
	pideYI BYTE 'Por favor ingrese el valor Y del punto ',0
	contapunto DWORD 0
	menu BYTE "	Por favor ingrese la opcion mediante la cual desea ingresar los datos",0dh,0ah,0dh,0ah,
			"	1. Lectura de archivo",0dh,0ah,
			"	2. Ingresar los datos manualmente",0dh,0ah,
			"	3. Datos aleatorios",0dh,0ah,
			"	Cual desea seleccionar: ",0
	dp BYTE ":",0
	pregn BYTE "Porfavor digite la cantidad de observaciones (parejas) que desea ingresar: ",0
	n DWORD ?
	n2 DWORD ?
	npuntoycoma dword 0

	npuntos DWORD ? 
	cicloaux DWORD ?  ;auxiliar indice primer ciclo
	cicloaux2 DWORD ?        ;auxiliar indice segundo ciclo
	auxnpuntos DWORD ?        ;auxiliar numero de puntos
	valEntero DWORD ?                ;valor del Entero
	auxaux DWORD ?     
	gradociclo DWORD ? 
	gradomasdos DWORD ?  
	p REAL4 10000 DUP(?)  
	desvtip REAL4 ?
	auxcicloaux2 DWORD ?
	auxManejo REAL4 0.0	;para manejar el indice de array m
	verror REAL4 0.0
	max REAL4 0.0
	MediaAritmetica REAL4 0.0
	Promedio REAL4 0.0
	Productoria REAL8 1.0
	numAux REAL4 0.001
	;aux DWORD ?
	decrementadora DWORD ?
	menosuno REAL4 -1.0
	jota DWORD ?
	valn  REAL4 ?
	auxcicloaux DWORD ?
	auxparamatriz DWORD ?
	contadorcito DWORD ?
	otrocontador DWORD ?
	yotrocontador DWORD ?
	mensajevolveriniciar BYTE  0ah,"Desea volver a iniciar? Para si ingrese 1, de lo contrario  0",0dh,0ah,0
	mx BYTE "X : ",0dh,0ah,0        ;texto para preguntar o pedir
	my BYTE "Y : ",0dh,0ah,0        ;texto para preguntar o pedir
	mgrado BYTE "Grado del polinomio : ",0dh,0ah,0        ;texto para preguntar o pedir
	mpuntos BYTE "Cantidad de puntos : ",0dh,0ah,0        ;texto para preguntar o pedir
	SaltoLinea BYTE " ",0dh,0ah,0        ;texto para preguntar o pedir
	mmodificar BYTE "Deseas Modificar algun punto? Si(1)-No(0) : ",0dh,0ah,0        ;texto para preguntar o pedir
	mmodificar2 BYTE "Posicion del dato a modificar [0,1,2,3...n]: ",0dh,0ah,0        ;texto para preguntar o pedir
	mensajeestimadores BYTE "Los coeficientes del polinomio en orden descendente, de menor a mayor grado, son ",0dh,0ah,0
	mensajeses BYTE "Estas son las S : ",0dh,0ah,0
	mensajesm  BYTE "Esta es la m : ",0dh,0ah,0
	condicional DWORD 1   
	AuxiliarPotencia REAL4 ?
	SumatoriaArmonica REAL4 0.0
	uno DWORD 1                ;constante uno
	acum REAL4 0.0        ;inicio de variable acum en cero
	consuno REAL4 1.0        ;constante uno
	conscero REAL4 0.0        ;constante cero
	pow REAL4 ?        ;variable para calcular la pow
	variablereal REAL4 ?  ;variable para descongestionar la pila
	AuxiliarArmonica REAL4 0.0
	grado DWORD ?         ;grado del polinomio
	indice DWORD ?        ;indice del polinomio
mediamediana REAL4 ?
	
	;///////////////////////////////////////////////////////////
	;			VALORES PARA EL CALCULO DE LA MODA
	
	auxMayor dword ?
	moda real4 0.0
	mayorCantidad dword 1.0
	acum2 dword 1.0

	
		;///////////////////////////////////////////////////////////
	;			VALORES PARA EL CALCULO DE Los cuartiles

auxcuartil real4 ?
cuartiluno 	real4 ?
cuartildos real4 ?
cuartiltres real4 ?
posuno dword ?
posdos dword ?
postres dword ?
decilbase dword ?
	
	;////////////////////////////////////////////////////////////////////////

	.code
	main PROC


	;//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	;Esta parte del codigo es la encargada de generar y almacenar lo números aleatorios
	;mov aux,16
	;mov eax, aux
	;mov eax,bbb
	;mul aux
	;add eax,ddd


	mov eax,white+(cyan*16)
	call settextcolor
	 call Clrscr
	mov eax,1000
	call delay
	;**********************************************************************
	;					IMprimo mensaje de bienvenida
	;**********************************************************************

	mov edx, offset m1
	call writestring
	;//Mensaje para seleccionar el color
	mWrite <" ",0dh,0ah,0>
	mWrite <" ",0dh,0ah,0>
	mWrite <"   Como todas las personas tenemos gustos diferentes,  Selecciona el color de  ",0dh,0ah>
	mWrite <"   letra y fondo que desees:",0dh,0ah,0>
	mWrite <" ",0dh,0ah,0>

	mov edx, offset mMenuNegro
	call writestring
	mWrite <" ",0dh,0ah,0>
	;**********************************************************************
	;					Modificacion color 
	;**********************************************************************
	CambioColor :
	mov edx, offset mSeleccionaLetra
	call writestring
	call readInt
	mov colorLetra, eax
	mov edx, offset mSeleccionaFondo
	call writestring
	call readInt
	mov colorFondo, eax

	mov eax, 16
	cmp eax, colorLetra ;// Si el color es mayor que 15
	jle CambioColor

	cmp eax, colorFondo;// Si el fondo es mayor que 15
	jle CambioColor 
	mov aux,16
	mov eax, aux
	mov eax,colorFondo
	mul aux
	add eax,colorLetra
	 
	call settextcolor
	call clrscr


	mov eax,1000
	call delay


	;**********************************************************************
	;					Mensaje Computador 
	;**********************************************************************

	mov edx, offset mComputador
	call writestring
	mov eax,3000
	call delay
	;**********************************************************************
	;					Mensaje FAQ 
	;**********************************************************************

	nmensajeFAQ:
	mov edx, offset mensajeFAQ
	call writestring
	call readint
	cmp eax,2
	jg nmensajeFAQ
	call clrscr

	je menuetiqueta
	call clrscr

	mWrite <" Por la presente se autoriza, de forma gratuita, a cualquier persona que haya obtenido una copia de este software y archivos de documentación asociados (el Software)">
	mWrite <", a utilizar el Software sin restricción, incluyendo sin limitación los derechos de usar, copiar, modificar, fusionar, publicar, distribuir, sublicenciar, y/o vender copias de este">
	mWrite <" Software, y permitir lo mismo a las personas a las que se les proporcione el Software",0dh,0ah,0>
	call WaitMsg
	;**********************************************************************
	;					Menu para seleccion de Insercion de datos 
	;**********************************************************************
	call clrscr
	jmp menuetiqueta
	menulimpio:
	call clrscr
	mwrite <"valor no valido ! vuelve a intentarlo",0dh,0ah,0>
	mov eax, 3000
	call delay
	menuetiqueta:
	call clrscr

	mov edx, offset mUn
	call writestring
	mov esi,0

	mov edx, offset menu
	call writestring
	call readint
	cmp eax, 1
	je opc1
	cmp eax, 2
	je opc2
	cmp eax, 3
		je opc3
	cmp eax,3
	jg menulimpio
	
		;/////////////////////////////////////////////////////////////////////////////////////////////////////////
		opc3:

		call Clrscr  
		mov edx, offset MensajeBienvenida
		call writeString
		mov edx, offset MensajeCantidad
		call writeString
		call readint  ; Leo el valor N (Cantidad de observaciones)
		mov NO,ax
		mul dos
		mov cx,ax
		call randomize
		mov esi,0
		finit  ;Reinicio pila
		CicloAleatorios:		
		mov eax,100			;Rango de los aleatorios
		mov RangoAleatorio,eax ;Rango de los aleatorios
		call randomRange	;llamo función de rango de randoms
		inc eax;		;rango 1 a 100
		mov numeroAleatorio,eax
		fld numeroAleatorio ; ST[0]=NumeroAleatorio
		mov eax,100			;Rango de los aleatorios
		mov RangoAleatorio,eax ;Rango de los aleatorios
		fdiv RangoAleatorio  ;ST[0]=NumeroAleatorio1/100
		FSTP Auxiliar
		mov eax,Auxiliar
		mov Vectorcillo[esi*4],eax
		inc esi
		LOOP CicloAleatorios     ;Salto Cicloaleatorios


		mov ax, NO
		IMUL dos
		mov cx, ax
		mov esi,0
		ciclomuestra4:
		fld vectorcillo[esi*4]
		inc esi
		call writefloat
		fstp garbage
		loop ciclomuestra4


		jmp salida

		;///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		opc1:
		;Permite que el usuario introduzca un nombre de archivo.

	mWrite "	Escriba un nombre de archivo de entrada (ejm datos.txt): "
	mov edx,OFFSET nombreArchivo
	mov ecx,SIZEOF nombreArchivo
	call ReadString

							; Abre el archivo en modo de entrada.
	mov edx,OFFSET nombreArchivo
	call OpenInputFile
	mov manejadorArchivo,eax

							; Comprueba errores.
	cmp eax,INVALID_HANDLE_VALUE	; ¿error al abrir el archivo?
	jne archivo_ok ; no: salta
	mWrite <"No se puede abrir el archivo :/",0dh,0ah>
	jmp terminar ; y termina
	archivo_ok:

							;Lee el archivo y lo coloca en un búfer.
	mov edx,OFFSET bufer
	mov ecx,TAM_BUFER
	call ReadFromFile
	jnc comprobar_tamanio_bufer ; ¿error al leer?

	mWrite "Error al leer el archivo" ; sí: muestra mensaje de error
	call WriteWindowsMsg
	jmp cerrar_archivo
	comprobar_tamanio_bufer:
	cmp eax,TAM_BUFER			; ¿el búfer es lo bastante grande?
	jb tam_buf_ok				; sí

	mWrite <"Error: Bufer demasiado chico para el archivo",0dh,0ah>
	jmp terminar				; y termina
	tam_buf_ok:
	mov bufer[eax],0			; inserta terminador nulo

	mWrite "Tamanio del archivo: "
	call WriteDec				;muestra el tamaño del archivo
	mov bytes_leidos, eax
	call Crlf

							; Muestra el búfer.

	mov edx, offset bufer
	finit
	call writestring
	;///////////////////////////////////////////////aqui comienza el voleo
	CICLOLECTURA:

							;parseo de la parte entera del numero
	mov ecx, TAM_BUFER		
	call parseinteger32
	mov pepito, eax
	fild pepito
	mov esi, edx


	caso1:  ;////////while
							;comparación para hallar '.' e iniciar el parseo de la parte fraccionaria
	mov al, [esi]
	mov bh,"."
	cmp bh,AL
		je abajito			;si encuentra '.' inicia el parseo de la parte fraccionaria
		inc contador			
		inc esi
		jmp caso1

	abajito:
							;parseo de la parte fraccionaria, se sabe que al parsear, asi el numero sea fraccionario, lo parsea a entero
			inc contador		;el procedimiento para convertirlo en flotante se encuentra abajo
		add edx, contador
		mov ecx, TAM_BUFER
		call parseinteger32
		mov pepito2,eax
		fild pepito2
							;comparacion para encontrar ';', ';' en este caso es para diferenciar un numero de otro
		CicloPruebaFraccion:
		mov al, [esi]
		mov bh,0ah
		cmp bh,AL

		je finciclopruebafraccion
							
		mov eax, contadorfraccion
		imul diez				
		mov contadorfraccion,eax
		inc contadorfraccionbase1
		inc esi

		jmp CicloPruebaFraccion

	finciclopruebafraccion:			;aqui se valida si el número original es positivo o negativo, esto se hace porque al momento de unir la parte entera
		inc contadorparaimpresion	;y su parte decimal (ya está convertida), el procedimiento es diferente
		inc npuntoycoma
		fldz						;si el numero original es positivo hay que acumrlos, si es negativo hay que restarlos
		fild pepito		
		fcomi st(0), st(1)
		fstp garbage
		fstp garbage	
		jb elevacion_neg
		jae elevacion_pos

								;procedimiento para convertir la parte fraccionaria (que es este momento es entera) en su verdadero valor
	elevacion_neg:
		mov eax, contadorfraccion	;la conversion se realiza de la siguiente manera: el numero a convertir se encuentra en st(1), y lo dividimos
		idiv diez					;entre 1*10^n, donde n es la cantidad de cifras decimales que tiene el número original
		idiv diez
		mov contadorfraccion,eax
		fild contadorfraccion
		fdivp st(1),st(0)
		fsub
		jmp salir_elev

	elevacion_pos:
		mov eax, contadorfraccion
		idiv diez
		idiv diez
		mov contadorfraccion,eax
		fild contadorfraccion 
		fdivp st(1),st(0)

		fadd
		jmp salir_elev
	salir_elev:

		mov aux_ptnv,esi				;aqui se mueven los datos de la pila, ya convertidos en su totalidad, a un arreglo de nombre vectorcillo
			mov esi,auxesi
		fstp vectorcillo[esi*4]
		inc auxesi

			mov esi,aux_ptnv

		mov eax, contador
		add contadorpuntoycoma, eax
		mov eax, contadorfraccionbase1
		add contadorpuntoycoma, eax
		inc contadorpuntoycoma

		mov contadorfraccion,1
		 mov contador,0
		mov contadorfraccionbase1,0
		dec contadorpuntoycoma
		
		mov eax, contadorpuntoycoma

									;validacion del fin del string que se encuentra en bufer
		mov edx, offset bufer
		add edx, eax
		mov al, [edx]
		mov bh,"!"
		cmp bh,AL
		je salidatotalllenado

		
		jmp CICLOLECTURA
			
	salidatotalllenado:
			mov ecx, contadorparaimpresion
			mov esi,0
			call crlf
			call crlf
	ciclomuestra:
			call crlf
			fld vectorcillo[esi*4]			;impresión de vertorcillo con los datos correspondientes.
			call writefloat
			fstp garbage
			inc esi
			loop ciclomuestra
			call crlf
			call crlf
			
	;///////////////////////////////////////////////aqui termina el voleo
			jmp iniciar
	opc2:
		

	llenadomanual:

			mov edx, offset pregn
			call writestring
			call readint
			mov n, eax
			mov ecx, n
			mov eax,n
			imul dos
			mov n2, eax
			mov esi,0
		llena:	
			mov eax, contapunto
			mov edx, offset pideXI
			call writestring
			call writedec
			mov edx, offset dp
			call writestring
			call readfloat
			fstp vectorcillo[esi*4]
			inc esi
			mov edx, offset pideYI
			call writestring
			call writedec
			mov edx, offset dp
			call writestring
			call readfloat
			fstp vectorcillo[esi*4]
			inc esi
			inc contapunto
		loop llena		
			;//muestra vector con datos ingresados
			
			mov ecx, n2
			;dec ecx
			mov esi, 0
	ciclomuestra1:		
			call crlf
			fld vectorcillo[esi*4]			;impresión de vertorcillo con los datos correspondientes.
			call writefloat
			fstp garbage
			inc esi
	loop ciclomuestra1

	mov eax, lengthof vectorcillo
	;call writedec
		

	cerrar_archivo:
	mov eax,manejadorArchivo
	call CloseFile
	terminar:

		;///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	salida:
		;jmp iniciar
	iniciar:
	finit
		 mov esi,0
			 mov aux, 0 
			 mov edx, offset MensajeCantidad1
			 call writestring
			call readint
			mov npuntos,eax
			mov ecx,eax
			CicloPromedio:
			finit
			fld vectorcillo[esi*4] 
			fld Promedio  ;St(1)=Promedio St(0)=vectorcillo[Esi*4]
			fadd
			fstp Promedio
			inc esi
	loop CicloPromedio
	fld Promedio

	finit
	fild npuntos 
	fld Promedio
	fdiv st(0),st(1)

	fstp MediaAritmetica
	fld MediaAritmetica

mov edx, offset mMenuOpciones
call writestring

	;MEDIA GEOMETRICA
			mov esi, 0
			mov eax, npuntos
			mov ecx,eax
			finit
			CicloProductoria:
			;fld Productoria 
			fld vectorcillo[esi*4]  ;St(0)=Productoria 
			fmul Productoria  
			fstp Productoria   
			inc esi
			finit
		loop CicloProductoria
		fld Productoria
			finit

	fild npuntos
	fild uno
	fdiv st(0),st(1)
	fstp AuxiliarPotencia
	finit
	fld AuxiliarPotencia
	fld Productoria
	fyl2x
	f2xm1
	fild uno
	fadd
	Fstp MediaGeometrica
	 
	;2^[y * log2 (x)] = T  = T=X^y
	;fstp AuxiliarProductoria


	;Calculo mediaGeometrica
	;*******************************************************

	;Calculo Media Armonica


			mov eax, npuntos
			mov esi,0
			mov ecx,eax
			finit
		CicloArmonica:
			fld vectorcillo[esi*4]
			fild uno
			fdiv st(0),st(1)
			fstp AuxiliarArmonica		
			finit
			fld AuxiliarArmonica
			fld SumatoriaArmonica
			fadd
			fstp SumatoriaArmonica
			inc esi
			finit
		 loop CicloArmonica
		 fild npuntos
	fld SumatoriaArmonica
	fdiv st(0),st(1)
	fstp AuxiliarArmonica
	finit
	fld AuxiliarArmonica
	fild uno
	fdiv st(0),st(1)
	fstp SumatoriaArmonica
	fld SumatoriaArmonica
	;*****************************************************
	;Calculo Varianza y cuasiVarianza
	finit
	mov eax, npuntos
			mov esi,0
			mov ecx,eax
			finit
			CicloVarianza:
			fld vectorcillo[esi*4] ;St(0)=vectorcillo
			fld MediaAritmetica  ;st(0)=vectorcillo, st(1)= Media
			fsub st(0),st(1)
			fstp auxCuadradosvarianza	
			finit
			fld auxCuadradosvarianza
			fmul st(0),st(0)
			fld sumavarianza
			fadd	
			fstp sumavarianza
			finit
			inc esi
			loop CicloVarianza
			
			fild npuntos
			fld sumavarianza
				fdiv st(0),st(1)
				fstp Varianza
			
			dec npuntos		
			fild npuntos
			fld sumavarianza
			fdiv st(0),st(1)
			fstp CuasiVarianza
			inc npuntos
			
		;*******************************************
		;Desviación típica
		fld varianza
		fsqrt 
		fstp DesvTip

		
		;********************************************
		;Desviación media respecto a la media
		finit
		mov eax, npuntos
			mov esi,0
			mov ecx,eax
			finit
			Ciclomediamedia:
			fld vectorcillo[esi*4] ;St(0)=vectorcillo
			fld MediaAritmetica  ;st(0)=vectorcillo, st(1)= Media
			fsub st(0),st(1)
			fabs
			fld auxaux
			fadd
			fstp auxaux
			finit
			inc esi
			loop Ciclomediamedia
			fild npuntos
			fld auxaux
			fdiv st(0),st(1)
			fstp mediamedia
			fld mediamedia

			

			
			
		;********************************************
		;Desviación media respecto a la mediana
		mov eax, npuntos
			mov esi,0
			mov ecx,eax
			finit
			Ciclomediamediana:
			fld vectorcillo[esi*4] ;St(0)=vectorcillo
			fld mediana  ;st(0)=vectorcillo, st(1)= Media
			fsub st(0),st(1)
			fabs
			fld auxaux
			fadd
			fstp auxaux
			finit
			inc esi
			loop Ciclomediamediana
			fild npuntos
			fld auxaux
			fdiv st(0),st(1)
			fstp mediamediana
			fld mediamediana
		
			

	;*****************************************
	;Ordenamiento del vector para el cálculo de la mediana usando el método de burbuja

	mov ebx,npuntos
	mov auxaux, ebx
	dec auxaux
	ordenBurbuja:
	 
	  mov ebx,0     ;posición
	  mov ecx,0    ;cambio
	  mov eax,0     ;i
	 
	bucleExterno:      ; for (i=0; i<100; i++)
	  cmp eax,auxaux
	  je finBuble
	 
	  inc eax                       
	  mov ebx,eax                   
	  dec eax                       
	 
	bucleInterno:
	  mov edx,0                     
	  cmp ebx,npuntos
	  je bucleExterno 
	 
		mov edx,dword ptr[vectorcillo+eax*4]  
	  cmp dword ptr[vectorcillo+ebx*4],edx       
	  jng incrementaPosicion                
	 
	  mov ecx, dword ptr[vectorcillo+ebx*4]
		  mov edx,dword ptr[vectorcillo+eax*4]  
	  mov dword ptr[vectorcillo+ebx*4],edx
	  mov dword ptr[vectorcillo+eax*4], ecx
	incrementaPosicion:
	  inc ebx
	 
	  cmp ebx,npuntos
	  je  incrementa_i               
	  jmp bucleInterno
	incrementa_i:
	  inc eax
	  jmp bucleExterno
	 
	finBuble:  

	mov ecx, npuntos
	mov esi, 0
	;ciclomuestra2:		
	;		call crlf
	;		fld vectorcillo[esi*4]			;impresión de vertorcillo con los datos correspondientes.
	;	    call writefloat
	;		fstp garbage
	;		inc esi
	;loop ciclomuestra2


	;FIN DEL ORDENAMIENTO DEL VECTOR 
	;NOTA: EL TOMA EL VECTOR DEL TAMAÑO DE NPUNTOS.
	;******************************************************************************

	
	;Calculo de la mediana.

;Calculo de la mediana.
cmp npuntos,1
jnp MedianaImpar
finit
mov edx, 0
mov eax, npuntos
idiv dos
dec eax
mov esi, eax
fld vectorcillo[esi*4]
dec esi
fld vectorcillo[esi*4]
fadd
call writefloat
fild dos
fdiv st(1),st(0)
fstp garbage
fstp mediana


jmp SalidaMediana


MedianaImpar:
mov edx, 0
mov eax, npuntos
idiv dos
dec eax
mov esi, eax
fld vectorcillo[esi*4]
fstp mediana


SalidaMediana:
	
;///////////////////////PROCESO PARA HALLAR LA MODA

;auxMayor dword ?
;	moda real4 0.0
;	mayorCantidad dword 1.0
;	acum dword 1.0
;auxesi dword ?

mov esi, 1	
fld vectorcillo[esi*4]
fstp moda				; moda= v[1]
whileModa:			
cmp esi, npuntos		;// while(i<npuntos){
jle fin_whileModa
inc esi				;esi++
fld vectorcillo[esi*4]
dec esi
fld vectorcillo[esi*4]
inc esi
fcomi ST(0), ST(1)			;///  if(v[i]==v[i-1]){
jne unoModa			; acum++
inc acum2
fstp garbage	
fstp garbage
mov eax,	 mayorCantidad
cmp eax, acum2						;/// if(mayorCantidad < acum){
jge whileModa
mov eax, acum2					   
mov mayorCantidad, eax		;////  mayorCantidad = acum
fld vectorcillo[esi*4]
fstp moda 							;///moda = vector[i]}

unoModa:								;/// }else{


mov eax,1
mov acum2, eax						;/// acum=1}


jmp whileModa						
fin_whileModa:
mWrite <"la moda es trini:",0dh,0ah,0>
fld moda
call writefloat
;**************************************************************
;           Calculo de cuartiles
;***************************************************************

;///////cuartil impar	

	
mov eax, npuntos
mov ebx, 4
div ebx
mov posuno,eax
mov esi, eax

fld vectorcillo[esi*4]
fstp cuartiluno	
	

mov eax, npuntos
mov ebx, 2
div ebx
mov posdos,eax
mov esi, eax

fld vectorcillo[esi*4]
fstp cuartildos	
	

mov eax, npuntos
mov ebx,3
mul ebx
mov ebx,4
div ebx
mov postres,eax
mov esi, eax

fld vectorcillo[esi*4]
fstp cuartiltres	
	
;/// cuartiles pares
mov eax, npuntos
mov ebx,4
div ebx
mov posuno,eax
mov esi, eax

;fld vectorcillo[esi*4]
;dec esi
;fld 	vectorcillo[esi*4]
;fadd
;fld 4
;fdiv st(0), st(1)


;**************************************************************
;           Calculo de DECILES
;***************************************************************

mov eax, npuntos
mov ebx, 10
div ebx
mov decilbase, eax

mov ecx, 10
calculoDeciles:
inc esi
mov eax, esi
mul decilbase
fld vectorcillo[esi*4]

loop  calculodeciles
	

;**************************************************************
;           Calculo de CENTILES
;***************************************************************

mov eax, npuntos
mov ebx, 100
div ebx
mov decilbase, eax

mov ecx, 100
calculoCentiles:
inc esi
mov eax, esi
mul decilbase
fld vectorcillo[esi*4]

loop  calculoCentiles
	
	
	
	;VARIABLES:
	 fld mediamedia  ; Desviación Media respecto a la media
	 fld DesvTip ;desviación típica
	 fld Varianza ;Varianza
	 fld CuasiVarianza ;pues eso, la cuasivarianza
    fld SumatoriaArmonica ;Media armonica
    fld MediaGeometrica ;media geometrica
    fld MediaAritmetica  ;Media aritmetica
    fld mediana  ;mediana
	fld moda	
    fld mediamediana
		salidillafinalsita:
			call waitMsg

		exit
	main ENDP
	END main
