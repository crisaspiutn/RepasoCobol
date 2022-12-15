      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. el_nombre_del_programa1.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 resultado PIC 99.
       01 saludo PIC X(36) VALUE "Bienvenido a la calculadora en cobol".
       *>este es el limite en una linea, pero se puede seguir abajo.
       01 mensaje PIC X(24) VALUE "el resultado es: ".
       01 mensaje1 PIC X(27) VALUE "ingrese el primer numero: ".
       01 mensaje2 PIC X(27) VALUE "ingrese el segundo numero: ".
       01 numero1 PIC 99.
       01 numero2 PIC 99.
       01 opciones pic 9 VALUE 1.
       88 opy VALUE 'Y'. *> tipo boolean
       88 opn VALUE 'N'. *> tipo boolean

       PROCEDURE DIVISION.
       MAIN-PROCEDURE. *>no se por que
         DISPLAY saludo.
         PERFORM funcionExterna.
         DISPLAY mensaje1.
         ACCEPT numero1.
         DISPLAY mensaje2.
         ACCEPT numero2.
         PERFORM menu until opciones = 0.
      *>      IF "b" EQUALS "s" THEN
      *>            DISPLAY "es igual"
      *>      ELSE DISPLAY "no es igual"
      *>      END-IF.
      *>      MOVE FALSE to estado.
      *>      DISPLAY estado.
      *>      ACCEPT opciones.
      *>      MOVE "hola desde mi nuevo saludo" TO saludo.
       *> asi se asigna valor
      *>      ACCEPT estado.
         STOP RUN.
      *>      PERFORM menu until estado=0.
       menu.
         DISPLAY "__________________________________________________" .
         DISPLAY "digite un numero segun la opciom q quiera realizar".
         DISPLAY "[1] sumar los numeros" .
         DISPLAY "[2] restar al primero el segundo" .
         DISPLAY "[3] multiplicar los 2 numeros" .
         DISPLAY "[4] dividir el primero al segundo" .
         DISPLAY "[5] exponer primero elevado al otro" .
         DISPLAY "[0] para Salir" .
         ACCEPT opciones.
         DISPLAY "__________________________________________________" .
         EVALUATE opciones
           WHEN 1
             PERFORM sumarNumeros
           WHEN 2
             PERFORM restarNumeros
           WHEN 3
             PERFORM multiplicarNumeros
           WHEN 4
             PERFORM dividirNumeros
           WHEN 5
             PERFORM exponenciarNumeros
           WHEN 0
             DISPLAY "saliste del programa"
         END-EVALUATE.
           *> " es 22    salto es -2
           *> en ascii
           *> " es 34    salto es 10
       sumarNumeros.
         DISPLAY "suma de: "numero1" y "numero2.
         ADD numero1 to numero2 GIVING resultado.
         DISPLAY resultado.
       restarNumeros.
         DISPLAY "resta de: "numero1" y "numero2.
         SUBTRACT numero1 FROM  numero2 GIVING resultado.
      *> COMPUTE resultado= numero1 - numero2.*>aqui importa el espacio
         DISPLAY resultado.
       multiplicarNumeros.
         DISPLAY "multiplicacion de: "numero1" por "numero2.
         MULTIPLY numero1 BY numero2 GIVING resultado.
         DISPLAY resultado.
       dividirNumeros.
         DISPLAY "divicion de: "numero1" a "numero2.
         ACCEPT asignarNume2 UNTIL numero2 <> 0.
         DIVIDE numero1 BY numero2 GIVING resultado.
      *>    DIVIDE numero1 INTO numero2 GIVING resultado.

         DISPLAY resultado.
       exponenciarNumeros.
         DISPLAY "exponenciasion de: "numero1" a "numero2.
         COMPUTE resultado=numero1**numero2.
         DISPLAY resultado.
       asignarNume2.
         DISPLAY "asignarNumero2".

       END PROGRAM el_nombre_del_programa1.
