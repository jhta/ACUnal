TITLE MASM Template						(main.asm)
; Description:
; 
; Revision date:
INCLUDE Irvine32.inc
INCLUDE macros.inc
TAM_VECTOR = 500
TAM_BUFER = 5000

.data
MensajeHolaHugo byte "                         Universidad Nacional de Colombia    ",0ah,0dh
				byte "                        Curso: Arquitectura de computadores  ",0ah,0dh
				byte "                   Regresion polinomial por minimos cuadrados",0ah,0dh
				byte "                                Semestre 3-2013              ",0ah,0dh,0ah,0dh,0
errorcillo real4 0.0
denominadorerror dword 0
auxiliarciclociclo1 dword 0
MensajeBienvenida BYTE "Generacion automatica de numeros aleatorios para la regresion lineal",0ah,0dh,0
mensajeerrorxd byte 0ah,"El error es aproximadamente:",0ah,0dh,0
MensajeCantidad BYTE "Por favor ingrese la cantidad de observaciones (X,Y) que desea tener",0ah,0dh,0
MensajeGrado BYTE 0ah,"Por favor ingrese el grado del polinomio al cual desea aproximar",0ah,0dh,0
MensajeCantidad1 BYTE 0ah,"Ingrese el tamaño del array de datos",0ah,0dh,0

MensajeInicialAviso BYTE 0ah,0ah, " La aplicacion fue desarrollada por Juan Felipe Mejía y Stiven cicloonda para     efectos de la evaluacion parcial del curso de arquitectura de computadores, la      difusion parcial o completa de su contenido es ilegal ",0ah,0dh,0
				   ;BYTE "parcial del curso de arquitectura de computadores, la difusion parcial o completa de su contenido es ilegal",0ah,0dh,0

MensajeFAQ  byte 0ah,0ah, "la aplicacion cuenta con un faq, recuerde leerlo antes de ingresar los datos",0ah,0dh
			byte "  Acepto leer el faq antes de usar la aplicacion Si(1), No(2)",0ah,0dh,0ah,0





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
indiceX DWORD 0
indicey DWORD 0
a REAL4 10000 DUP(?)        ;Polinomio... a<0> + a<1>x + a<2>x^2...
t REAL4 10000 DUP(?)        ;terminos independientes
s REAL4 10000 DUP(?)
m REAL4 10000 DUP(?)        ;array coeficientes
aux_ptnv dword ?
auxesi dword 0
contadorparaimpresion dword 0
pideXI BYTE 'Por favor ingrese el valor X del punto ',0
pideYI BYTE 'Por favor ingrese el valor Y del punto ',0
contapunto DWORD 0
menu BYTE "Por favor ingrese la opcion mediante la cual desea ingresar los datos",0dh,0ah,0dh,0ah,
		"1. Lectura de archivo",0dh,0ah,
		"2. Ingresar los datos manualmente",0dh,0ah,
		"3. Datos aleatorios",0dh,0ah,
		"Usted eligio la opcion: ",0
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
auxcicloaux2 DWORD ?
auxManejo REAL4 0.0	;para manejar el indice de array m
verror REAL4 0.0
max REAL4 0.0
MediaAritmetica REAL4 0.0
Promedio REAL4 0.0
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
uno DWORD 1                ;constante uno
acum REAL4 0.0        ;inicio de variable acum en cero
consuno REAL4 1.0        ;constante uno
conscero REAL4 0.0        ;constante cero
pow REAL4 ?        ;variable para calcular la pow
variablereal REAL4 ?  ;variable para descongestionar la pila
grado DWORD ?         ;grado del polinomio
indice DWORD ?        ;indice del polinomio

;cero DWORD 0

;////////////////////////////////////////////////////////////////////////

.code
main PROC


;//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
;Esta parte del codigo es la encargada de generar y almacenar lo números aleatorios
mov eax,3000
call delay
mov edx, offset mensajeholahugo
call writestring


mov eax,3000
call delay

mov edx, offset mensajeFAQ
call writestring
call readint
cmp eax,1
jne salidillafinalsita
call clrscr

mov edx, offset mensajeinicialaviso
call writestring
mov eax,4000
call delay
call clrscr 
menuetiqueta:
mov edx, offset mensajeholahugo
call writestring
mov ax, 11
call settextcolor
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

mWrite "Escriba un nombre de archivo de entrada: "
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
mWrite <"No se puede abrir el archivo",0dh,0ah>
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
	mov contadorfraccion,eax
	fild contadorfraccion
	fdivp st(1),st(0)
	fsub
	jmp salir_elev

elevacion_pos:
	mov eax, contadorfraccion
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
 mov esi,0
		 mov aux, 0 
		 mov edx, offset MensajeCantidad1
		 call writestring
		call readint
		mov npuntos,eax
		mov ecx,eax
;//////////////////////////////////////////////////////////////////////////////
; CALCULAR LA MEDIA ARITMETICCA
;///////////////////////////////////////////////////////////

fld vectorcillo[esi*4]
fstp MediaAritmetica
CicloPromedio:
    finit
    inc esi
    ; Vectorcillo[Esi*4]
    fld vectorcillo[esi*4]
    fld Promedio
    fadd St(0),St(1) 
    fstp Promedio
loop CicloPromedio

fld npuntos
fld Promedio ;ponelo vos que yo no se cual es
fdiv 
fstp MediaAritmetica
fld MediaAritmetica
Call writefloat


	salidillafinalsita:
	exit
main ENDP
END main
